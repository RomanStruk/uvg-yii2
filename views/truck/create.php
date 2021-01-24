<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\TrackListsTruck */

$this->title = 'Create Track Lists Truck';
$this->params['breadcrumbs'][] = ['label' => 'Track Lists Trucks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="track-lists-truck-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
