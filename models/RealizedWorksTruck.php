<?php

namespace app\models;

use Yii;
use \yii\db\ActiveRecord;

/**
 * This is the model class for table "realized_works_truck".
 *
 * @property integer $id
 * @property integer $route_list
 * @property string $dimension
 * @property double $freight
 */
class RealizedWorksTruck extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'realized_works_truck';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['route_list'], 'required'],
            [['route_list'], 'integer'],
            [['dimension'], 'string'],
            [['freight'], 'number'],
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
            'dimension' => 'Dimension',
            'freight' => 'Freight',
        ];
    }
}
