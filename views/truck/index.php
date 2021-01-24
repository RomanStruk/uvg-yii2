<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\TrackListsTruckSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Шляхові листи вантажних автомобілів';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="track-lists-truck-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Track Lists Truck', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?php
    $columns = [
        //'id',
        [
            'attribute' => 'number',
            'headerOptions' => ['width' => '30'],
        ],
        [
            'attribute' => 'transport',
            'label' => 'Марка',
            'format' => 'raw', // Возможные варианты: raw, html
            'content' => function ($data) {
                return Html::a(
                    $data->getTransportTitle(),
                    '/transport-car/index',
                    [
                        'title' => 'Смелей вперед!',
                        'target' => '_blank'
                    ]
                );
            },
            'filter' => \app\models\TransportTruck::getTrucksList()
        ],
        [
            'attribute' => 'driver',
            'label' => 'Водій',
            'format' => 'text', // Возможные варианты: raw, html
            'content' => function ($data) {
                return $data->getDriverName();
            },
            'filter' => \app\models\Drivers::getDriversList()
        ],
        //            'driver',
        //'date',
        //             'datego',
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
        'balance_fuel',
        'fuel',
        // 'mk_fuel',
        'w_off_fuell',
        [
            'attribute' => 'oil',
            'headerOptions' => ['width' => '30'],
        ],
        // 'worked',
        // 'note:ntext',
        // 'order:ntext',
        // 'valid',
        // 'speedometerdeparture',
        'kilometrage',
        // 'speedometerreturn',
        [
            'attribute' => 'payment',
            'filter' => array("sr" => "Спеціальний рахунок", "db" => "Державний бюджет", "pr" => "Поточний ремонт"),
            'headerOptions' => ['width' => '30'],
        ],
        [
            'class' => 'yii\grid\ActionColumn',
            'headerOptions' => ['width' => '70'],
            'template' => '{view} {update} {delete}{link}',
        ],
        // 'completed',
    ];
    echo \kartik\export\ExportMenu::widget([
        'dataProvider' => $dataProvider,
        'columns' => $columns
    ]); ?>
    <!--    \kartik\grid\GridView::widget([-->
    <?= \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => $columns
    ]); ?>
</div>
