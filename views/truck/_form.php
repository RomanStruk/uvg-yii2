<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TrackListsTruck */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="track-lists-truck-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'number')->textInput() ?>

    <?= $form->field($model, 'driver')->textInput() ?>

    <?= $form->field($model, 'transport')->textInput() ?>

    <?= $form->field($model, 'date')->textInput() ?>

    <?= $form->field($model, 'datego')->textInput() ?>

    <?= $form->field($model, 'fuel')->textInput() ?>

    <?= $form->field($model, 'mk_fuel')->textInput() ?>

    <?= $form->field($model, 'balance_fuel')->textInput() ?>

    <?= $form->field($model, 'w_off_fuell')->textInput() ?>

    <?= $form->field($model, 'oil')->textInput() ?>

    <?= $form->field($model, 'gasoline')->textInput() ?>

    <?= $form->field($model, 'worked')->textInput() ?>

    <?= $form->field($model, 'note')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'order')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'valid')->dropDownList([ 1 => '1', 0 => '0', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'speedometerdeparture')->textInput() ?>

    <?= $form->field($model, 'kilometrage')->textInput() ?>

    <?= $form->field($model, 'speedometerreturn')->textInput() ?>

    <?= $form->field($model, 'payment')->dropDownList([ 'db' => 'Db', 'sr' => 'Sr', 'pr' => 'Pr', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'completed')->dropDownList([ 1 => '1', 0 => '0', ], ['prompt' => '']) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
