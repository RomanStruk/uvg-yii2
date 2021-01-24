<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\RouteList;

/**
 * RouteListSearch represents the model behind the search form about `app\models\RouteList`.
 */
class RouteListSearch extends RouteList
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'number', 'driver_id', 'transport_id', 'speedometerdeparture', 'kilometrage', 'speedometerreturn'], 'integer'],
            [['type', 'datego', 'payment', 'note', 'date', 'valid', 'completed'], 'safe'],
            [['worked'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     * @param boolean $type
     * @return ActiveDataProvider
     */
    public function search($params, $type = false)
    {
        if ($type) {
            $query = RouteList::find()->with('driver', 'transport', 'fuelGasoline', 'fuelDiesel', 'oil')
                ->andFilterWhere(['type' => $type])
                ->orderBy('number DESC');
        }else{
            $query = RouteList::find()->with('driver', 'transport', 'fuelGasoline', 'fuelDiesel', 'oil')
                ->orderBy('number DESC');
        }
        if ($type == 'truck') {
            $query->with('rvt');
        }

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'number' => $this->number,
//            'driver_id' => $this->driverName,//
            'driver_id' => $this->driver_id,
            'transport_id' => $this->transport_id,
            'worked' => $this->worked,
            'speedometerdeparture' => $this->speedometerdeparture,
            'kilometrage' => $this->kilometrage,
            'speedometerreturn' => $this->speedometerreturn,
            'date' => $this->date,
        ]);

        if (is_numeric($this->datego)) {
            $query->andWhere('month(datego) = '.$this->datego.' and year(datego) = year(now())'); // month
        } else {
            $query->andWhere('`datego` <= NOW()');
        }
        $query->andFilterWhere(['like', 'payment', $this->payment])
            ->andFilterWhere(['like', 'note', $this->note])
            ->andFilterWhere(['like', 'valid', $this->valid])
            ->andFilterWhere(['like', 'completed', $this->completed]);

        return $dataProvider;
    }
}
