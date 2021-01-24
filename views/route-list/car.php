<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RouteListSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Легкові';
$this->params['breadcrumbs'][] = ['label' => 'Шляхові листи', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Додати шляховий лист', ['create-car'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Перерахувати пальне', ['reset-fuel'], ['class' => 'btn btn-warning']) ?>
        <?= Html::a('Перерахувати спідометри', ['reset-speedometer'], ['class' => 'btn btn-info']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'label' => '',
                'format' => 'raw',
                'value' => function($data){
                    return Html::img(\yii\helpers\Url::toRoute($data->valid == '1' ? '/img/true.png':'/img/false.png'),[
                        'alt'=>'Статус',
                        'style' => 'width:20px;'
                    ]);
                },
            ],
            [
                'attribute' => 'number',
                'headerOptions' => ['width' => '30'],
            ],
            [
                'attribute' => 'driver_id',
                'content'=>function($data){
                    $out_arr = explode(' ', $data->driver->name);
                    $out_arr[1] = substr($out_arr[1], 0, 2);
                    $out_arr[2] = substr($out_arr[2], 0, 2);
                    return $driver = $out_arr[0].' '.$out_arr[1].'. '.$out_arr[2].'.';
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
                'filter' => \app\models\Transport::getList('car')
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
                'format' =>  ['date', 'dd.MM.Y'],
            ],
            // 'worked',
             'kilometrage',
            [
                'attribute' => 'payment',
                'label' => 'Оплата',
                'filter' => array("sr" => "Спеціальний рахунок", "db" => "Державний бюджет", "pr" => "Поточний ремонт"),
                'headerOptions' => ['width' => '30'],
            ],

            /*[
                'class' => 'yii\grid\ActionColumn',
                'headerOptions' => ['width' => '70'],
            ],*/
            [
                'class' => 'yii\grid\ActionColumn',
                'headerOptions' => ['width' => '85'],
                'template' => '{view} {update} {delete} {valid}',
                'buttons' => [
                    'valid' => function ($url,$model,$key) {
                        return Html::a('<span class="glyphicon glyphicon-minus-sign"></span>', $url, ['title'=>'Не активна']);
                    },
                ],
            ],
        ],
    ]); ?>
</div>
