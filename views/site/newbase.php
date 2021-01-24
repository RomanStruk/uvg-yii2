<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'NewBase';
$this->params['breadcrumbs'][] = $this->title;

?>
<?= \yii\grid\GridView::widget([
    'dataProvider' => $cars,
//    'filterModel' => $cars,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        //'id',
        'number',
//            'titleTransport.mk',
        'transport',
        'driver',
//            'driver',
        //'date',
             'datego',

        /*[
            'attribute'=>'datego',
            'value' => 'datego',
            'label'=>'Дата відправлення',
            'format'=>'raw', // Возможные варианты: raw, html
            'filter' => \dosamigos\datepicker\DatePicker::widget([
                'model' => $searchModel,
                'attribute' => 'datego',
                'clientOptions' => [
                    'autoclose' => true,
                    'format' => 'yyyy-m-d'
                ]
            ])
        ],*/
//        'refuels_fuel',
        // 'mk_fuel',
//        'balance_fuel',
//        'w_off_fuell',
        // 'worked',
        // 'note:ntext',
        // 'order:ntext',
        // 'valid',
        // 'speedometerdeparture',
        'kilometrage',
        // 'speedometerreturn',
        [
            'attribute'=>'payment',
            'filter'=>array("sr"=>"Спеціальний рахунок","db"=>"Державний бюджет", "pr"=>"Поточний ремонт"),
        ],
        // 'completed',

        ['class' => 'yii\grid\ActionColumn'],
    ],
]); ?>

<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>This is the About page. You may modify the following file to customize its content:</p>

    <code><?= __FILE__ ?></code>
</div>
