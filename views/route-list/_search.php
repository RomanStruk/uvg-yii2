<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\RouteListSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="route-list-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'number') ?>

    <?= $form->field($model, 'driver') ?>

    <?= $form->field($model, 'transport') ?>

    <?= $form->field($model, 'type') ?>

    <?php // echo $form->field($model, 'datego') ?>

    <?php // echo $form->field($model, 'worked') ?>

    <?php // echo $form->field($model, 'speedometerdeparture') ?>

    <?php // echo $form->field($model, 'kilometrage') ?>

    <?php // echo $form->field($model, 'speedometerreturn') ?>

    <?php // echo $form->field($model, 'payment') ?>

    <?php // echo $form->field($model, 'note') ?>

    <?php // echo $form->field($model, 'date') ?>

    <?php // echo $form->field($model, 'valid') ?>

    <?php // echo $form->field($model, 'completed') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
