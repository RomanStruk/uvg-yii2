<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\search\RouteListSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Трактори';
$this->params['breadcrumbs'][] = ['label' => 'Шляхові листи', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Додати шляховий лист', ['create-tractor'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Перерахувати пальне', ['reset-fuel'], ['class' => 'btn btn-warning']) ?>
        <?= Html::a('Перерахувати спідометри', ['reset-speedometer'], ['class' => 'btn btn-info']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'rowOptions' => function ($model, $key, $index, $grid) {
            if ($model->valid == 0) {
                $class = ' list-group-item-danger';
            } else {
                $class = $index % 2 ? 'odd' : 'even';
            }
            return [
                'key' => $key,
                'index' => $index,
                'class' => $class
            ];
        },
        'columns' => [
            [
                'attribute' => 'number',
                'headerOptions' => ['width' => '30'],
            ],
            [
                'attribute' => 'driver_id',
                'content' => function ($data) {
                    $out_arr = explode(' ', $data->driver->name);
                    $out_arr[1] = substr($out_arr[1], 0, 2);
                    $out_arr[2] = substr($out_arr[2], 0, 2);
                    return $driver = $out_arr[0] . ' ' . $out_arr[1] . '. ' . $out_arr[2] . '.';
                },
                'label' => 'Водій',
                'format' => 'text', // Возможные варианты: raw, html
                'filter' => \app\models\Drivers::getDriversList(),
                'headerOptions' => ['width' => '200'],
            ],
            [
                'attribute' => 'transport_id',
                'value' => 'transport.mk',
                'label' => 'Транспорт',
                'format' => 'text',
                'filter' => \app\models\Transport::getList('truck')
            ],
            [
                'value' => 'defaultDeparture.balance',
                'label' => 'При виїзді'
            ],
            [
                'value' => 'fuelDefault.filled_by',
                'label' => 'Заправлено'
            ],
            [
                'value' => 'fuelDefault.write_off',
                'label' => 'Списано'
            ],
            [
                'value' => 'fuelDefault.balance',
                'label' => 'Залишок'
            ],
            [
                'value' => 'oil.filled_by',
                'label' => 'Олива',
                'format' => 'text',
            ],
            [
                'value' => 'fuelGasoline.filled_by',
                'label' => 'Бензин',
                'format' => 'text',
            ],
            [
                'value' => 'rvt.freight',
                'label' => 'Об\'єм',
                'format' => 'text',
            ],
            [
//                'value' => 'rvt.freight',
                'content' => function ($data) {
                    $r = $data->rvt === null ? '' : $data->rvt->dimension;
                    if ($r == 't') {
                        return 'тонн';
                    } elseif ($r == 'm3') {
                        return 'м3';
                    } else {
                        return 'мото-годин';
                    }
                },
                'label' => 'Розмірність',
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
                ],
                'format' => ['date', 'dd.MM.Y'],
            ],
            // 'worked',
//            'kilometrage',
            [
                'attribute' => 'payment',
                'label' => 'Оплата',
                'filter' => array("sr" => "Спеціальний рахунок", "db" => "Державний бюджет", "pr" => "Поточний ремонт"),
                'headerOptions' => ['width' => '30'],
            ],

            [
                'class' => 'yii\grid\ActionColumn',
                'headerOptions' => ['width' => '70'],
            ],
        ],
    ]); ?>
</div>
