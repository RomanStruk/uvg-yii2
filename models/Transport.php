<?php

namespace app\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "transport".
 *
 * @property integer $id
 * @property string $type
 * @property string $type_fuel
 * @property integer $route_list
 * @property string $mk
 * @property integer $tk
 * @property string $number
 * @property string $note
 * @property string $fuel100
 * @property string $fuel100t
 * @property string $w1
 * @property string $w1acs
 * @property string $size1001
 * @property string $size1002
 */
class Transport extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'transport';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'note', 'type_fuel'], 'string'],
            [['route_list', 'tk'], 'integer'],
            [['mk', 'number', 'fuel100', 'fuel100t', 'w1', 'w1acs', 'size1001', 'size1002'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type' => 'Тип авто',
            'type_fuel' => 'Тип палива',
            'route_list' => 'Route List',
            'mk' => 'Марка',
            'tk' => 'Tk',
            'number' => 'Держ номер',
            'note' => 'Нотатка',
            'fuel100' => 'Витрата на 100км',
            'fuel100t' => 'Витрата на 100ткм',
            'w1' => '1 год роб',
            'w1acs' => '1 год роб обл',
            'size1001' => '100м3 1гр',
            'size1002' => '100 м3 2гр',
        ];
    }

    public static function getList($type = '')
    {
        $parents = Transport::find()
            ->select(['id', 'mk'])
            ->distinct(true);
        if ($type) {
            $parents->where(['type' => $type]);
        }
        return ArrayHelper::map($parents->all(), 'id', 'mk');
    }


    public function getCountFuel($payment = 'db')
    {
        $route_list = RouteList::find()->with('allFuel')->where(['transport_id' => $this->id, 'payment' => $payment])->all();
        $sum = 0;
        foreach ($route_list as $item) {
            foreach ($item->allFuel as $fuel) {
                if ($fuel->type == $this->type_fuel) {
                    $sum += $fuel->write_off;
                }
            }
//            $sum += ArrayHelper::getValue($item, 'allFuel.write_off');
        }

        return $sum;

    }

    public function getCountDistance($payment = 'db')
    {
        $car = RouteList::find()->where(['transport_id' => $this->id, 'payment' => $payment])->sum('kilometrage');
        return $car ? $car : 0;
    }
}
