<?php

namespace app\models;

use Yii;
use yii\behaviors\TimestampBehavior;
use yii\db\Expression;
use \yii\db\ActiveRecord;

/**
 * This is the model class for table "route_list".
 *
 * @property integer $id
 * @property integer $number
 * @property integer $driver_id
 * @property integer $transport_id
 * @property string $type
 * @property string $datego
 * @property double $worked
 * @property integer $speedometerdeparture
 * @property integer $kilometrage
 * @property integer $speedometerreturn
 * @property string $payment
 * @property string $note
 * @property string $date
 * @property string $valid
 * @property string $completed
 */
class RouteList extends ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'route_list';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['number', 'driver_id', 'transport_id', 'type', 'datego', 'worked', 'payment', 'kilometrage'], 'required'],
            [['number', 'driver_id', 'transport_id', 'speedometerdeparture', 'kilometrage', 'speedometerreturn'], 'integer'],
            [['type', 'payment', 'note', 'valid', 'completed'], 'string'],
            [['datego', 'date', 'fuel', 'realizedWorksTruck'], 'safe'],
            [['worked'], 'number'],
//            ['fuel', 'each', 'rule' => ['number']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'number' => 'Номер',
            'driver_id' => 'Водій',
            'transport_id' => 'Транспорт',
            'type' => 'Тип',
            'datego' => 'Дата путівки',
            'worked' => 'Відпрацьовано(год)',
            'speedometerdeparture' => 'Показник спідометра при виїзді',
            'kilometrage' => 'Кілометраж',
            'speedometerreturn' => 'Показник спідометра при поверненні',
            'payment' => 'Оплата(с.р., д.б)',
            'note' => 'Додаткові відмітки про рух траспорту',
            'date' => 'Дата внесення в бд путівки',
            'valid' => 'Чи дійсна путівка',
            'completed' => 'Completed',
        ];
    }

    /*    public function getPreviousRouteList()
        {
            return $this->hasOne(RouteList::className(), ['driver_id' => 'driver_id', 'transport_id' => 'transport_id'])->where('number < ' . $this->number)->orderBy('number')->limit(1);
        }*/

    private $_realized_works_truck;

    public function getRealizedWorksTruck()
    {
        if ($this->_realized_works_truck === null) {
            $all_rvt = $this->rvt;
            if ($all_rvt !== null) {
                $this->_realized_works_truck['dimension'] = $all_rvt->dimension;
                $this->_realized_works_truck['freight'] = $all_rvt->freight;
            }
        }
        return $this->_realized_works_truck;
    }

    public function setRealizedWorksTruck($value)
    {
        $this->_realized_works_truck = (array)$value;
    }

    public function getRvt()
    {
        return $this->hasOne(RealizedWorksTruck::className(), ['route_list' => 'id']);
    }

    private function updateRealizedWorksTruck()
    {
        $new = $this->getRealizedWorksTruck();
        if ($RealizedWorksTruck = RealizedWorksTruck::find()->where(['route_list' => $this->id])->one()) {
            $RealizedWorksTruck->dimension = $new['dimension'];
            $RealizedWorksTruck->freight = (float)$new['freight'];
            $RealizedWorksTruck->save();
        } else {
            $RealizedWorksTruck = new RealizedWorksTruck();
            $RealizedWorksTruck->route_list = $this->id;
            $RealizedWorksTruck->dimension = $new['dimension'];
            $RealizedWorksTruck->freight = (float)$new['freight'];
            $RealizedWorksTruck->save();
        }
    }

    public function getLastNumber($type = 'car')
    {
        $number = RouteList::find()->select('number')->where(['type' => $type])->orderBy('number DESC')->limit(1)->one();
        return $number->number;
//        $max_number = $DataBase->getFieldOnWhere('route_list', 'number', '`type`=\'car\'', 'number', false);
    }

    public function getDriver()
    {
        return $this->hasOne(Drivers::className(), ['id' => 'driver_id']);
    }

    public function getTransport()
    {
        return $this->hasOne(Transport::className(), ['id' => 'transport_id']);
    }

    public function getAllFuel()
    {
        return $this->hasMany(WriteOffFuel::className(), ['route_list' => 'id']);
    }

    public function getFuelGasoline()
    {
        return $this->hasOne(WriteOffFuel::className(), ['route_list' => 'id'])
            ->where(['type' => 'gasoline']);
    }

    public function getFuelDiesel()
    {
        return $this->hasOne(WriteOffFuel::className(), ['route_list' => 'id'])
            ->where(['type' => 'diesel']);
    }

    public function getOil()
    {
        return $this->hasOne(WriteOffFuel::className(), ['route_list' => 'id'])
            ->where(['type' => 'oil']);
    }

    public function getFuelDefault()
    {
        return $this->hasOne(WriteOffFuel::className(), ['route_list' => 'id'])
            ->where(['type' => $this->transport->type_fuel]);
    }

    public function getDefaultDeparture()
    {
        $previous_list = RouteList::find()
            ->where("`valid`='1' AND `datego`< '{$this->datego}' AND `driver_id`='{$this->driver_id}' AND `transport_id`='{$this->transport_id}'")
            ->orderBy('number DESC')
            ->limit(1)
            ->one();
        return @$previous_list->fuelDefault;

    }

    private $_allFuel;

    public function getFuel()
    {
        if ($this->_allFuel === null and $this->id) {
            $allFuel = $this->getAllFuel()->all();
            if ($allFuel) {
                foreach ($allFuel as $row) {
                    if ($row !== null) {
                        $this->_allFuel[$row->type]['filled_by'] = $row->filled_by;
                        $this->_allFuel[$row->type]['write_off'] = $row->write_off;
                    }
                }
            }
        }
        return $this->_allFuel;
    }


    public function setFuel($value)
    {
        if (array_key_exists('default', $value)) {
            $type_fuel_transport = $this->transport->type_fuel;
            $this->_allFuel[$type_fuel_transport]['filled_by'] = (float)$value['default']['filled_by'];
            $this->_allFuel[$type_fuel_transport]['write_off'] = (float)$value['default']['write_off'];
            if ($type_fuel_transport == 'diesel') {
                if (array_key_exists('oil', $value) and $value['oil'] != '') {
                    $this->_allFuel['oil']['filled_by'] = (float)$value['oil']['filled_by'];
                    $this->_allFuel['oil']['write_off'] = (float)$value['oil']['filled_by'];
                }
                if (array_key_exists('gasoline', $value) and $value['gasoline'] != '') {
                    $this->_allFuel['gasoline']['filled_by'] = (float)$value['gasoline']['filled_by'];
                    $this->_allFuel['gasoline']['write_off'] = (float)$value['gasoline']['filled_by'];
                }
            }
        } else {
            foreach ($value as $fuel => $param) {
                $this->_allFuel[$fuel]['filled_by'] = (float)$param['filled_by'];
                $this->_allFuel[$fuel]['write_off'] = (float)$param['write_off'];
            }
        }
    }

    public function beforeSave($insert)
    {
        if ($this->hasAttribute('date') and $this->date == false) {
            $this->date = new Expression('NOW()');
        }
        if ($this->hasAttribute('speedometerdeparture') and $this->speedometerdeparture == false) {
            $this->speedometerdeparture = 0;
        }
        if ($this->hasAttribute('speedometerreturn') and $this->speedometerreturn == false) {
            $this->speedometerreturn = 0;
        }
        return parent::beforeSave($insert); // TODO: Change the autogenerated stub
    }

    public function afterSave($insert, $changedAttributes)
    {
        $this->updateFuel();
        if ($this->type == 'truck' or $this->type == 'tractor') {
            $this->updateRealizedWorksTruck();
        }
        parent::afterSave($insert, $changedAttributes);
    }

    private function updateFuel()
    {
        $newFilledBy = $this->getFuel();
        if ($newFilledBy) {
            foreach ($newFilledBy as $key => $value) {
                if ($WriteOffFuel = WriteOffFuel::find()->where(['route_list' => $this->id, 'type' => $key])->one()) {
                    if (array_key_exists('filled_by', $value)) {
                        $WriteOffFuel->filled_by = $value['filled_by'];
                    }
                    if (array_key_exists('write_off', $value)) {
                        $WriteOffFuel->write_off = $value['write_off'];
                    }
                    if (array_key_exists('balance', $value)) {
                        $WriteOffFuel->balance = $value['balance'];
                    }
                    $WriteOffFuel->save();
                } else {
                    $WriteOffFuel = new WriteOffFuel();
                    $WriteOffFuel->type = $key;
                    $WriteOffFuel->route_list = $this->id;
                    if (array_key_exists('filled_by', $value)) {
                        $WriteOffFuel->filled_by = $value['filled_by'];
                    }
                    if (array_key_exists('write_off', $value)) {
                        $WriteOffFuel->write_off = $value['write_off'];
                    }
                    if (array_key_exists('balance', $value)) {
                        $WriteOffFuel->balance = $value['balance'];
                    }
                    $WriteOffFuel->save();

                }
            }
        }
    }

    public function afterDelete()
    {
        WriteOffFuel::deleteAll(['route_list' => $this->id]);
        RealizedWorksTruck::deleteAll(['route_list' => $this->id]);
        parent::afterDelete(); // TODO: Change the autogenerated stub
    }
}
