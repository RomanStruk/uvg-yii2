<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use \dosamigos\datepicker\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\RouteList */
/* @var $writeOffFuel app\models\WriteOffFuel */

/* @var $form yii\widgets\ActiveForm */

$this->title = 'Додати шляховий лист';
$this->params['breadcrumbs'][] = ['label' => 'Шляхові листи', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Вантажні', 'url' => ['truck']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-create">

    <h1><?= Html::encode($this->title) ?></h1>


<div class="route-list-form">

    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'number')->textInput(['value'=>$model->getLastNumber('truck')+1]) ?>
    <?= $form->field($model, 'driver_id')->dropDownList(\app\models\Drivers::getDriversList()) ?>
    <?= $form->field($model, 'transport_id')->dropDownList(\app\models\Transport::getList('truck')) ?>
    <?= $form->field($model, 'type')->hiddenInput([ 'value'=>'truck'])->label(false) ?>
    <?= $form->field($model, 'datego')->widget(DatePicker::className(), ['clientOptions' => ['autoclose' => true,'format' => 'yyyy-mm-dd']]) ?>
    <?= $form->field($model, 'fuel[default][filled_by]')->textInput()->label('Заправлено пального') ?>
    <?= $form->field($model, 'fuel[default][write_off]')->textInput()->label('Списано пального') ?>
    <?= $form->field($model, 'fuel[oil][filled_by]')->textInput(['value' => 0])->label('Заправлено оливи') ?>
    <?= $form->field($model, 'worked')->textInput() ?>
    <?= $form->field($model, 'kilometrage')->textInput() ?>
    <?= $form->field($model, 'realizedWorksTruck[dimension]')->dropDownList([ 'm3' => 'm3',  'motogod' => 'motogod','t' => 'Тонн', ], ['prompt' => ''])->label('Розмірність обєму робіт') ?>
    <?= $form->field($model, 'realizedWorksTruck[freight]')->textInput()->label('Обєм робіт') ?>
    <?= $form->field($model, 'payment')->dropDownList([ 'sr' => 'Спец рахунок',  'db' => 'Держ бюджет','pr' => 'Пот ремонт', ]) ?>
    <?= $form->field($model, 'note')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'valid')->hiddenInput(['value' => '1'])->label(false) ?>
    <?= $form->field($model, 'completed')->dropDownList([ 1 => 'Заповнений', 0 => 'Не заповнений', ]) ?>
    <div class="form-group">
        <?= Html::submitButton('Додати', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

</div>
