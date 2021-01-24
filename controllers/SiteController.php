<?php

namespace app\controllers;

use app\models\RealizedWorksTruck;
use app\models\Routelistt;
use app\models\RouteList;
use app\models\TrackListsTruck;
use app\models\WriteOffFuel;
use Yii;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\Controller;

class SiteController extends Controller
{
    public $freeAccess = true;

    public function behaviors()
    {
        return [
            'ghost-access'=> [
                'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl',
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionNewBase(){

        $route_list = new ActiveDataProvider([
            'query' => Routelistt::find()
        ]);
        $route = Routelistt::find()->orderBy('number ASC')->all();
//        var_dump($route);
        foreach ($route as $list) {
            if ($list->number == 0) {
                $balance[$list->driver][$list->transport] = ($list->fuel == NULL or $list->fuel < 0  or $list->fuel == false) ? 0: $list->fuel;
                continue;
            }
            if($list->type == 'truck' or $list->type == 'tractor'){
                $car = RouteList::find()->where(['number' => $list->number, 'driver_id'=>$list->driver, 'transport_id'=>$list->transport])->one();
                $id = $car->id;
                if ($id) {
                    $t = new RealizedWorksTruck();
                    $t->route_list = $id;
                    $t->dimension = $list->dimension;
                    $t->freight = ($list->freight == NULL or $list->freight < 0  or $list->freight == false) ? 0: floatval(str_replace(',','.',$list->freight));
//                        floatval(ereg_replace("," , "." , ereg_replace("[^-0-9,]","",$list->freight)));
                    $t->save();
                }
            }

//            echo($list->id);
        }
        /*foreach ($route as $list) {
            if ($list->number == 0) {
                $balance[$list->driver][$list->transport] = ($list->fuel == NULL or $list->fuel < 0  or $list->fuel == false) ? 0: $list->fuel;
                continue;
            }
            $car = new RouteList();
            $car->number = $list->number;
            $car->driver_id = $list->driver;
            $car->transport_id = $list->transport;
            $car->type = $list->type;
            $car->datego = $list->datego;
            $car->worked = ($list->worked == NULL or $list->worked < 0  or $list->worked == false) ? 0: $list->worked;
            $car->speedometerdeparture = ($list->speedometerdeparture == NULL or $list->speedometerdeparture < 0  or $list->speedometerdeparture == false) ? 0: $list->speedometerdeparture;;
            $car->kilometrage = ($list->kilometrage == NULL or $list->kilometrage < 0  or $list->kilometrage == false) ? 0: $list->kilometrage;;
            $car->speedometerreturn = ($list->speedometerreturn == NULL or $list->speedometerreturn < 0  or $list->speedometerreturn == false) ? 0: $list->speedometerreturn;;
            $car->payment = $list->payment;
            $car->note = $list->note;
            $car->date = $list->date;
            $car->valid = $list->valid;
            $car->completed = $list->completed;

            $car->save();
            $id = $car->getPrimaryKey();
            if($list->oil != false and $list->oil > 0){
                $f = new WriteOffFuel();
                $f->route_list = $id;
                $f->type = 'oil';
                $f->filled_by = $list->oil;
                $f->write_off = $list->oil;
                $f->balance = 0;
                $f->save();
            }
            if($list->fuel >= 0 and $list->fuel != NULL ){
                $f = new WriteOffFuel();
                $f->route_list = $id;
                if ($list->type == 'car') {
                    $f->type = 'gasoline';
                } elseif ($list->type == 'truck') {
                    $f->type = 'diesel';
                } elseif ($list->type == 'tractor') {
                    $f->type = 'diesel';
                }
                $f->filled_by = ($list->fuel == NULL or $list->fuel < 0  or $list->fuel == false) ? 0: $list->fuel;
                $f->write_off = ($list->w_off_fuell == NULL or $list->w_off_fuell < 0  or $list->w_off_fuell == false) ? 0: $list->w_off_fuell;
                $f->balance = ($list->balance_fuel == NULL or $list->balance_fuel < 0  or $list->balance_fuel == false) ? 0: $list->balance_fuel;
                if(isset($balance[$list->driver][$list->transport])){
                    $f->balance += $balance[$list->driver][$list->transport];
                    unset($balance[$list->driver][$list->transport]);
                }
                $f->save();
            }

            if($list->type == 'tractor'){
                $t = new RealizedWorksTruck();
                $t->route_list = $id;
                $t->dimension = $list->dimension;
                $t->freight = ($list->freight == NULL or $list->freight < 0  or $list->freight == false) ? 0: $list->freight;
                $t->save();
            }

//            echo($list->id);
        }*/
        return $this->render('newbase',['cars'=>$route_list]);
    }
}
