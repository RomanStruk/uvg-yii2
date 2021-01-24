<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use webvimark\modules\UserManagement\components\GhostMenu;
use webvimark\modules\UserManagement\UserManagementModule;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Любешівське УВГ',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);

    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [
            ['label' => 'Головна', 'url' => ['/site/index']],
            !Yii::$app->user->isGuest ? (
            [
                'label' => 'Адміністрування користувачів',
                'items' => [
                    ['label' => 'Користувачі', 'url' => ['/user-management/user/index']],
                    ['label' => 'Ролі', 'url' => ['/user-management/role/index']],
                    ['label' => 'Дозволи', 'url' => ['/user-management/permission/index']],
                    ['label' => 'Групи дозволів', 'url' => ['/user-management/auth-item-group/index']],
                    ['label' => 'Лог авторизації', 'url' => ['/user-management/user-visit-log/index']],
                ]
            ]) : (
            [
                'label' => 'Frontend routes',
                'items' => [
                    ['label' => 'Вход', 'url' => ['/user-management/auth/login']],
                    ['label' => 'Выход', 'url' => ['/user-management/auth/logout']],
                    ['label' => 'Регистрация', 'url' => ['/user-management/auth/registration']],
                    ['label' => 'Смена пароля', 'url' => ['/user-management/auth/change-own-password']],
                    ['label' => 'Восстановление пароля', 'url' => ['/user-management/auth/password-recovery']],
                    ['label' => 'Подтверждение e-mail', 'url' => ['/user-management/auth/confirm-email']],
                ],
            ]),
            [
                'label' => 'Звіти',
                'url' => ['reports/index'],
                'visible' => !Yii::$app->user->isGuest
            ],
            [
                'label' => 'Gii',
                'url' => ['/gii'],
                'visible' => !Yii::$app->user->isGuest
            ],
            [
                'label' => 'Шляхові листи',
                'items' => [
                    ['label' => 'Легкові', 'url' => '/route-list/car'],
                    ['label' => 'Вантажні', 'url' => '/route-list/truck'],
                    ['label' => 'Трактори', 'url' => '/route-list/tractor'],
                ],
                'visible' => !Yii::$app->user->isGuest
            ],
            [
                'label' => 'Автомобілі',
                'items' => [
                    ['label' => 'Легкові', 'url' => '/transport/car'],
                    ['label' => 'Вантажні', 'url' => '/transport/truck'],
                    ['label' => 'Трактори', 'url' => '/transport/tractor'],
                ],
                'visible' => !Yii::$app->user->isGuest
            ],
            Yii::$app->user->isGuest ? (
            ['label' => 'Login', 'url' => ['/user-management/auth/login']]
            ) : (
                '<li>'
                . Html::beginForm(['/site/logout'], 'post', ['class' => 'navbar-form'])
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link']
                )
                . Html::endForm()
                . '</li>'
            )
        ],
    ]);
    NavBar::end();

    ?>
    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; My Company <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
