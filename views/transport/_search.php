<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\search\TransportSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transport-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'type') ?>

    <?= $form->field($model, 'route_list') ?>

    <?= $form->field($model, 'mk') ?>

    <?= $form->field($model, 'tk') ?>

    <?php // echo $form->field($model, 'number') ?>

    <?php // echo $form->field($model, 'note') ?>

    <?php // echo $form->field($model, 'fuel100') ?>

    <?php // echo $form->field($model, 'fuel100t') ?>

    <?php // echo $form->field($model, 'w1') ?>

    <?php // echo $form->field($model, 'w1acs') ?>

    <?php // echo $form->field($model, 'size1001') ?>

    <?php // echo $form->field($model, 'size1002') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
