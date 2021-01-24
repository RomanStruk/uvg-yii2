<?php

namespace app\models;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "drivers".
 *
 * @property integer $id
 * @property string $name
 * @property string $telephone
 * @property string $profession
 * @property string $count
 * @property string $info
 */
class Drivers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'drivers';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'telephone', 'profession'], 'required'],
            [['count', 'info'], 'string'],
            [['name', 'profession'], 'string', 'max' => 255],
            [['telephone'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Прізвище Імя По батькові',
            'telephone' => 'Номер телефону',
            'profession' => 'Професія',
            'count' => 'Рахунок',
            'info' => 'Додаткова інфа',
        ];
    }

    public static function getDriversList()
    {
        // Выбираем только те категории, у которых есть дочерние категории
        $parents = Drivers::find()
            ->select(['id', 'name'])
            ->distinct(true)
            ->all();

        return ArrayHelper::map($parents, 'id', 'name');
    }
    
    public static function getDriverSmallText($driver)
    {
        $out_arr = explode(' ', $driver);
        $out_arr[1] = substr($out_arr[1], 0, 2);
        $out_arr[2] = substr($out_arr[2], 0, 2);
        return $driver = $out_arr[0].' '.$out_arr[1].'. '.$out_arr[2].'.';
    }
}
