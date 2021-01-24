<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "routelist".
 *
 * @property integer $id
 * @property integer $number
 * @property integer $driver
 * @property integer $transport
 * @property string $type
 * @property string $date
 * @property string $datego
 * @property string $fuel
 * @property integer $mk_fuel
 * @property string $dispach
 * @property string $return
 * @property string $oil
 * @property string $other_fuel
 * @property string $other_mk_fuel
 * @property string $balance_fuel
 * @property string $w_off_fuell
 * @property integer $worked
 * @property string $note
 * @property string $order
 * @property string $valid
 * @property string $freight
 * @property string $dimension
 * @property string $speedometerdeparture
 * @property string $kilometrage
 * @property string $speedometerreturn
 * @property string $payment
 * @property string $completed
 */
class Routelistt extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'routelist';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['number', 'type', 'datego', 'worked', 'freight', 'speedometerdeparture', 'kilometrage', 'speedometerreturn'], 'required'],
            [['number', 'driver', 'transport', 'mk_fuel', 'worked'], 'integer'],
            [['type', 'note', 'order', 'valid', 'dimension', 'payment', 'completed'], 'string'],
            [['date', 'datego', 'dispach', 'return'], 'safe'],
            [['fuel', 'oil', 'other_fuel', 'other_mk_fuel', 'balance_fuel', 'w_off_fuell', 'kilometrage'], 'string', 'max' => 255],
            [['freight', 'speedometerdeparture', 'speedometerreturn'], 'string', 'max' => 6],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'number' => 'Номер шляхового листа',
            'driver' => 'Driver',
            'transport' => 'id транспорту',
            'type' => 'Тип шляхового листа',
            'date' => 'Дата внесення в бд путівки',
            'datego' => 'Дата путівки',
            'fuel' => 'Заправка',
            'mk_fuel' => 'Марка палива(дб)',
            'dispach' => 'Час відправлення',
            'return' => 'Час повернення',
            'oil' => 'Запарвка масла',
            'other_fuel' => 'Інші паливо маст матеріали',
            'other_mk_fuel' => 'Марка other_fuel (дб)',
            'balance_fuel' => 'Залишок пального при поверненні',
            'w_off_fuell' => 'Списання пального(л)',
            'worked' => 'Відпрацьовано(год)',
            'note' => 'Додаткові відмітки про рух траспорту',
            'order' => 'У чиє розпорядження',
            'valid' => 'Чи дійсна путівка',
            'freight' => 'Freight',
            'dimension' => 'Dimension',
            'speedometerdeparture' => 'Speedometerdeparture',
            'kilometrage' => 'Кілометраж',
            'speedometerreturn' => 'Показник спідометра при поверненні',
            'payment' => 'Оплата(с.р., д.б)',
            'completed' => 'Completed',
        ];
    }
}
