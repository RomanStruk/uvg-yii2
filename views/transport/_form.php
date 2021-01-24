<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Transport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="transport-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'type')->dropDownList([ 'truck' => 'Truck', 'car' => 'Car', 'tractor' => 'Tractor', 'other' => 'Other', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'route_list')->textInput() ?>

    <?= $form->field($model, 'mk')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tk')->textInput() ?>

    <?= $form->field($model, 'number')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'note')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'fuel100')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'fuel100t')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'w1')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'w1acs')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'size1001')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'size1002')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
