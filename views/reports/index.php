<?php
/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\widgets\ActiveForm;


$this->title = 'Формування щомісячних звітів';
$this->params['breadcrumbs'][] = $this->title;
?><?php
if ($files) {
    echo \yii\bootstrap\Alert::widget(['options' => ['class' => 'alert-info',], 'body' => 'Звіти створені',]);
}
?>
<h1><?= Html::encode($this->title) ?></h1>

<?php
$form = ActiveForm::begin([
    'id' => 'report-form',
]) ?>
<?= $form->field($model, 'report')->dropDownList([
    'register' => 'Реєстри шляхових листів',
    'fuelall' => 'Витрати пального по рахунках',
    'balances' => 'Заправка/Залишки']); ?>
<?= $form->field($model, 'month')->dropDownList([
    '1' => 'січень',
    '2' => 'лютий',
    '3' => 'березень',
    '4' => 'квітень',
    '5' => 'травень',
    '6' => 'червень',
    '7' => 'липень',
    '8' => 'серпень',
    '9' => 'вересень',
    '10' => 'жовтень',
    '11' => 'листопад',
    '12' => 'грудень']
//    ['options' => [(int)date("m") => ['Selected' => true]]]
);
?>
<?= Html::submitButton('Отримати', ['class' => 'btn btn-primary']) ?>
<?php ActiveForm::end() ?>
<?php if ($files) : ?>
    <br>
    <ul class="list-group">
        <?php foreach ($files as $driver => $file) : ?>
            <li class="list-group-item list-group-item-success"><?=$driver?> <a href="<?=$file?>"><?=$file?></a></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>
