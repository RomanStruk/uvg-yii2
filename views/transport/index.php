<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TransportCarSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Легкові автомобілі';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="transport-car-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Додати новий автомобіль', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'id',
            'mk',
           
//            'tk',
            'number',
//            'note:ntext',
            'fuel100',
            [
                'header'=>'Списання держ. бюдж.',
                'value'=> function($model){
                    return $model->getCountFuel('db') .' л. (' . $model->getCountDistance('db') .' км.)';
                }
            ],
            [
                'header'=>'Списання пот. рем.',
                'value'=> function($model){
                    return $model->getCountFuel('pr') .' л. (' . $model->getCountDistance('pr') .' км.)';
                }
            ],
            [
                'header'=>'Списання спец. рах.',
                'value'=> function($model){
                    return $model->getCountFuel('sr') .' л. (' . $model->getCountDistance('sr') .' км.)';
                }
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
