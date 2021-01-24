<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\RouteList */

$this->title = 'Оновити шляховий лист: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Шляхові листи', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => 'Шляховий лист #' .$model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Оновити';
?>
<div class="route-list-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
