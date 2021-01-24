<?php

namespace app\models;

use yii\base\Model;

class ReportsForm extends Model
{
    public $report;
    public $month;

    public function rules()
    {
        return [
            [['report', 'month'], 'required'],
            [['report'], 'string'],
            [['month'], 'integer'],
            // тут определяются правила валидации
        ];
    }
    public function attributeLabels()
    {
        return [
            'report' => 'Звіт',
            'month' => 'Місяць',
        ];
    }
}
