<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\RouteList */

$this->title = 'Create Route List';
$this->params['breadcrumbs'][] = ['label' => 'Route Lists', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="route-list-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
//        'writeOffFuel' => $writeOffFuel,
    ]) ?>

</div>
