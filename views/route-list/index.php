<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RouteListSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Route Lists';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Route List', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,

        'columns' => [
            [
                'attribute' => 'number',
                'headerOptions' => ['width' => '30'],
            ],
//            'driverName',
            [
                'attribute' => 'driver_id',
                'value' => 'driver.name',
                'label' => 'Водій',
                'format' => 'text', // Возможные варианты: raw, html
                'filter' => \app\models\Drivers::getDriversList()
            ],
            [
                'attribute' => 'transport_id',
                'value' => 'transport.mk',
                'label' => 'Транспорт',
                'format' => 'text',
                'filter' => \app\models\Transport::getList()
            ],
            'type',
            [
                'value' => 'fuelDiesel.filled_by',
                'label' => 'Заправка д-во',
                'format' => 'text',
            ],
            [
                'value' => 'fuelGasoline.filled_by',
                'label' => 'Заправка бензин',
                'format' => 'text',
            ],
            [
                'value' => 'oil.filled_by',
                'label' => 'Олива',
                'format' => 'text',
            ],
            [
                'attribute' => 'datego',
                'filter' => [
                    '1' => 'січень',
                    '2' => 'лютий',
                    '3' => 'березень',
                    '4' => 'квітень',
                    '5' => 'травень',
                    '6' => 'червень',
                    '7' => 'липень',
                    '8' => 'серпень',
                    '9' => 'вересень',
                    '10' => 'жовтень',
                    '11' => 'листопад',
                    '12' => 'грудень'
                    //                '1' => 'За місяць',
                    //                '2' => 'За рік',
                    //                '3' => 'За квартал',
                    //                '4' => 'За тиждень',
                    //                '5' => 'За день',
                ],
            ],
            // 'worked',
            // 'speedometerdeparture',
             'kilometrage',
            // 'speedometerreturn',
            [
                'attribute' => 'payment',
                'filter' => array("sr" => "Спеціальний рахунок", "db" => "Державний бюджет", "pr" => "Поточний ремонт"),
                'headerOptions' => ['width' => '30'],
            ],
            // 'note:ntext',
            // 'date',
            // 'valid',
            // 'completed',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
