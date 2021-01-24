<?php

use \yii\helpers\Url;
/* @var $this yii\web\View */

$this->title = 'Любешівське УВГ';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Congratulations!</h1>

        <p class="lead">Переглянути список шляхових листів.</p>

        <p>
            <a class="btn btn-lg btn-success" href="<?= Url::to(['route-list/car']); ?>">Легкові</a>
            <a class="btn btn-lg btn-success" href="<?= Url::to(['route-list/truck']); ?>">Вантажні</a>
            <a class="btn btn-lg btn-success" href="<?= Url::to(['route-list/tractor']); ?>">Механізми</a>
        </p>
    </div>

    <div class="body-content">
    </div>
</div>
