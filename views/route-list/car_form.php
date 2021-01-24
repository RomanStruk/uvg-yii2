<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\RouteList */
/* @var $writeOffFuel app\models\WriteOffFuel */

/* @var $form yii\widgets\ActiveForm */

$this->title = 'Додати шляховий лист';
$this->params['breadcrumbs'][] = ['label' => 'Шляхові листи', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Легкові', 'url' => ['car']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-create">

    <h1><?= Html::encode($this->title) ?></h1>


<div class="route-list-form">

    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'number')->textInput(['value'=>$model->getLastNumber('car')+1]) ?>
    <?= $form->field($model, 'driver_id')->dropDownList(\app\models\Drivers::getDriversList()) ?>
    <?= $form->field($model, 'transport_id')->dropDownList(\app\models\Transport::getList('car')) ?>
    <?= $form->field($model, 'type')->hiddenInput([ 'value'=>'car'])->label(false) ?>
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
    <?= $form->field($model, 'fuel[gasoline][filled_by]')->textInput()->label('Заправлено пального') ?>
    <?= $form->field($model, 'fuel[gasoline][write_off]')->textInput()->label('Списано пального') ?>
    <?= $form->field($model, 'worked')->textInput() ?>
    <?= $form->field($model, 'kilometrage')->textInput() ?>
    <?= $form->field($model, 'payment')->dropDownList([ 'sr' => 'Спец рахунок',  'db' => 'Держ бюджет','pr' => 'Пот ремонт', ]) ?>
    <?= $form->field($model, 'note')->textarea(['rows' => 6]) ?>
    <?php  //echo $form->field($model, 'date')->textInput() ?>
    <?php if($model->isNewRecord){
        echo $form->field($model, 'valid')->hiddenInput(['value' => '1'])->label(false);
    }else{
        echo $form->field($model, 'valid')->dropDownList([ 1 => 'Дійсна', 0 => 'Не дійсна', ], ['prompt' => 'Выберите статус...']);
    }
    ?>
    <?= $form->field($model, 'completed')->dropDownList([ 1 => 'Заповнений', 0 => 'Не заповнений', ]) ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

</div>
