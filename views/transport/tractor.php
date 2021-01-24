<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\search\TransportSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Трактори і механізми';
$this->params['breadcrumbs'][] = ['label' => 'Всі', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="transport-car-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Додати', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
//            'id',
            [
                'attribute' => 'id',
                'value' => 'mk',
                'header'=>'Марка',
                'format' => 'text',
                'filter' => \app\models\Transport::getList('tractor')
            ],
//            'tk',
            'number',
//            'note:ntext',
            'w1',
            [
                'header'=>'Списання держ. бюдж.',
                'value'=> function($model){
                    return $model->getCountFuel('db') .' л.';
                }
            ],
            [
                'header'=>'Списання пот. рем.',
                'value'=> function($model){
                    return $model->getCountFuel('pr') .' л. ';
                }
            ],
            [
                'header'=>'Списання спец. рах.',
                'value'=> function($model){
                    return $model->getCountFuel('sr') .' л.';
                }
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
