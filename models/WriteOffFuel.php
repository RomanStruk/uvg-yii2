<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "write_off_fuel".
 *
 * @property integer $id
 * @property integer $route_list
 * @property string $type
 * @property double $filled_by
 * @property double $write_off
 * @property double $balance
 */
class WriteOffFuel extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'write_off_fuel';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['route_list', 'type'], 'required'],
            [['route_list'], 'integer'],
            [['type'], 'string'],
            [['filled_by', 'write_off', 'balance'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'route_list' => 'Route List',
            'type' => 'Type',
            'filled_by' => 'Filled By',
            'write_off' => 'Write Off',
            'balance' => 'Balance',
        ];
    }
}
