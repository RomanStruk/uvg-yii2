<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\RouteList */
/* @var $writeOffFuel app\models\WriteOffFuel */

/* @var $form yii\widgets\ActiveForm */
?>

<div class="route-list-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'number')->textInput() ?>

    <?= $form->field($model, 'driver_id')->dropDownList(\app\models\Drivers::getDriversList()) ?>

    <?= $form->field($model, 'transport_id')->dropDownList(\app\models\Transport::getList()) ?>

    <?= $form->field($model, 'type')->dropDownList([ 'car' => 'Автомобіль', 'tractor' => 'Трактор', 'truck' => 'Вантажний', ], ['prompt' => '']) ?>

    <?php
    //    $form->field($model, 'datego')->textInput();
    echo  $form->field($model, 'datego')->widget(
        \dosamigos\datepicker\DatePicker::className(), [
        'clientOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd'
        ]
    ]);
    ?>
    <?= $form->field($model, 'worked')->textInput() ?>
    <?= $form->field($model, 'kilometrage')->textInput() ?>
    <?= $form->field($model, 'payment')->dropDownList([ 'sr' => 'Спец рахунок',  'db' => 'Держ бюджет','pr' => 'Пот ремонт', ]) ?>
    <?= $form->field($model, 'note')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'valid')->dropDownList([ 1 => 'Дійсна', 0 => 'Не дійсна', ], ['prompt' => '']) ?>
    <?= $form->field($model, 'completed')->dropDownList([ 1 => 'Заповнений', 0 => 'Не заповнений', ], ['prompt' => '']) ?>
    <?= $form->field($model, 'fuel[diesel][filled_by]')->textInput()->label('Заправлено дизельного пального') ?>
    <?= $form->field($model, 'fuel[diesel][write_off]')->textInput()->label('Списано дизельного пального') ?>
    <?= $form->field($model, 'fuel[gasoline][filled_by]')->textInput()->label('Заправлено бензину') ?>
    <?= $form->field($model, 'fuel[gasoline][write_off]')->textInput()->label('Списано бензину') ?>
    <?= $form->field($model, 'fuel[oil][filled_by]')->textInput()->label('Олива') ?>
    <?= $form->field($model, 'fuel[oil][write_off]')->hiddenInput(['value' => '0'])->label(false) ?>
    <?= $form->field($model, 'realizedWorksTruck[dimension]')->dropDownList([ 'm3' => 'm3',  'motogod' => 'motogod','t' => 'Тонн', ], ['prompt' => ''])->label('Розмірність обєму робіт') ?>
    <?= $form->field($model, 'realizedWorksTruck[freight]')->textInput()->label('Обєм робіт') ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
