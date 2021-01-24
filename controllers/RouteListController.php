<?php

namespace app\controllers;

use app\models\Transport;
use app\models\WriteOffFuel;
use Yii;
use app\models\RouteList;
use app\models\search\RouteListSearch;
use yii\base\ErrorException;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * RouteListController implements the CRUD actions for RouteList model.
 */
class RouteListController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
            'ghost-access' => [
                'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl',
            ],
        ];
    }

    public function actionResetFuel()
    {
        // перерахунок пального
        $route_list_reset_db = RouteList::find()->with('allFuel')->addOrderBy('datego ASC')->addOrderBy('number ASC')->all();
        $new_route_list = array();
        if ($route_list_reset_db) {
            foreach ($route_list_reset_db as $route_list_reset) {
                if ($route_list_reset['valid'] != '1' or $route_list_reset['completed'] != '1') {
                    continue; // якщо не оформлена чи не використана путівка то пропустити
                }
                // внесення даних по заправці, списанню і залишку з БД
                foreach ($route_list_reset->allFuel as $item) {
                    if ($item->type == $route_list_reset->transport->type_fuel) {
                        $new_route_list[$route_list_reset['driver_id']][$route_list_reset['transport_id']][] = $item;

                    }
                }
            }
        }
        foreach ($new_route_list as $driver_id => $array_transport) {
            $temp_fuel = null;
            foreach ($array_transport as $transport_id => $fuel_array) {
                $Transport = Transport::find()->where(['id' => $transport_id])->one();
                $balance = null;
                foreach ($fuel_array as $fuel) {
                    if ($balance !== null) {
                        if ($WriteOffFuel = WriteOffFuel::find()->where(['route_list' => $fuel['route_list'], 'type' => $Transport->type_fuel])->one()) {
                            $balance = bcsub(bcadd($balance, $fuel['filled_by'], 0), $fuel['write_off'], 1); // залишок
                            $WriteOffFuel->balance = $balance;
                            $WriteOffFuel->save();
                        }
                    }
                    if ($balance === null) {
                        $balance = $fuel['balance'];
                    }
                }
            }
        }
        return $this->actionIndex();
    }

    public function actionResetSpeedometer()
    {
        $transport_db = Transport::find()->select(['id', 'type'])->orWhere(['type' => 'car'])->orWhere(['type' => 'truck'])->all();
        foreach ($transport_db as $transport) {
            $route_list_reset_db = RouteList::find()->select(['id', 'completed', 'kilometrage', 'speedometerdeparture', 'speedometerreturn'])->where(['transport_id' => $transport->id])->addOrderBy('datego ASC')->asArray()->all();
            $one = null;
            foreach ($route_list_reset_db as $route_list_reset) {
                if ($route_list_reset['completed'] != '1') {
                    break; // якщо не оформлена то вийти
                }
                if ($one) {// якщо вже є масив з даними по попередній путівці
                    $new_route_list = [// отримати залишки
                        'speedometerdeparture' => $one['speedometerreturn'],
                        'speedometerreturn' => bcadd($one['speedometerreturn'], $route_list_reset['kilometrage'], 0)
                    ];
                    $Route_list = RouteList::find()->where(['id' => $route_list_reset['id']])->one();
                    $Route_list->speedometerdeparture = $new_route_list['speedometerdeparture']; // оновити дані в БД
                    $Route_list->speedometerreturn = $new_route_list['speedometerreturn']; // оновити дані в БД
                    $Route_list->save();
                    $one = $new_route_list;
//                    var_dump($one);
                } else {
                    $one = [// внесення даних по заправці, списанню і залишку з БД
                        'kilometrage' => (int)$route_list_reset['kilometrage'],
                        'speedometerdeparture' => (int)$route_list_reset['speedometerdeparture'],
                        'speedometerreturn' => bcadd($route_list_reset['speedometerdeparture'], $route_list_reset['kilometrage'], 0)
                    ];
                    $Route_list = RouteList::find()->where(['id' => $route_list_reset['id']])->one();
                    $Route_list->speedometerreturn = $one['speedometerreturn']; // оновити дані в БД
                    $Route_list->save();
                }
            }
        }

        return $this->actionIndex();
    }

    /**
     * Lists all RouteList models.
     * @return mixed
     */
    public
    function actionIndex()
    {
        $searchModel = new RouteListSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Lists all RouteList models.
     * @return mixed
     */
    public
    function actionCar()
    {
        $searchModel = new RouteListSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams, 'car');

        return $this->render('car', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Lists all RouteList models.
     * @return mixed
     */
    public
    function actionTruck()
    {
        $searchModel = new RouteListSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams, 'truck');
        return $this->render('truck', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Lists all RouteList models.
     * @return mixed
     */
    public function actionTractor()
    {
        $searchModel = new RouteListSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams, 'tractor');

        return $this->render('tractor', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single RouteList model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new RouteList model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new RouteList();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
//                'writeOffFuel' => $writeOffFuel
            ]);
        }
    }

    /**
     * Creates a new RouteList model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreateCar()
    {
        $model = new RouteList();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
//             $model->save();
//            var_dump($model);
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('car_form', [
                'model' => $model,
//                'writeOffFuel' => $writeOffFuel
            ]);
        }
    }

    /**
     * Creates a new RouteList model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreateTruck()
    {
        $model = new RouteList();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('truck_form', [
                'model' => $model,
//                'writeOffFuel' => $writeOffFuel
            ]);
        }
    }

    /**
     * Creates a new RouteList model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreateTractor()
    {
        $model = new RouteList();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('tractor_form', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing RouteList model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->render('update', [
                'model' => $model,
            ]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing RouteList model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }


    /**
     * Відмітити путівку як не активна
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionValid($id)
    {
        $model = $this->findModel($id);
        $model->setAttribute('valid', 0);
        $model->save(false);
        return $this->redirect(['index']);
    }

    /**
     * Finds the RouteList model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return RouteList the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = RouteList::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
