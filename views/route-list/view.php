<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\RouteList */

$this->title = 'Шляховий лист #'.$model->number;
$this->params['breadcrumbs'][] = ['label' => 'Шляхові листи', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Оновити', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Видалити', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
//            'id',
            'number',
            'driver.name',
            'transport.mk',
            'type',
            'datego',
            'worked',
            'speedometerdeparture',
            'kilometrage',
            'speedometerreturn',
            'payment',
            'note:ntext',
            'date',
            'valid',
            'completed',
            [
                'value' => $model->fuelGasoline == null ? '' : $model->fuelGasoline->filled_by,
                'label' => 'Запрвка бензину',
            ],
            [
                'value' => $model->fuelGasoline == null ? '' : $model->fuelGasoline->write_off,
                'label' => 'Списання бензину',
            ],
            [
                'value' => $model->fuelDiesel == null ? '' : $model->fuelDiesel->filled_by,
                'label' => 'Запрвка дизпалива',
            ],
            [
                'value' => $model->fuelDiesel == null ? '' : $model->fuelDiesel->write_off,
                'label' => 'Списання дизпалива',
            ],
            [
                'value' => $model->oil == null ? '' : $model->oil->filled_by,
                'label' => 'Запрвка оливи',
            ],
            [
                'value' => $model->realizedWorksTruck['freight'],
                'label' => 'Обєм робіт, '.$model->realizedWorksTruck['dimension'],
            ],
        ],
    ]) ?>

</div>
