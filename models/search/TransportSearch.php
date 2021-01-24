<?php

namespace app\models\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Transport;

/**
 * TransportCarSearch represents the model behind the search form about `app\models\TransportCar`.
 */
class TransportSearch extends Transport
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
//            [['id', 'tk'], 'integer'],
//            [['mk', 'number', 'note'], 'safe'],
            [['mk', 'id'], 'safe'],
//            [['fuel'], 'number'],
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
     * @param string $type
     * @return ActiveDataProvider
     */
    public function search($params, $type = null)
    {
        if ($type) {
            $query = Transport::find()->orWhere(['type'=>$type]);
        }else{
            $query = Transport::find();
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
//            'tk' => $this->tk,
//            'fuel' => $this->fuel,
        ]);

        $query->andFilterWhere(['like', 'mk', $this->mk])
            ->andFilterWhere(['like', 'number', $this->number])
            ->andFilterWhere(['like', 'note', $this->note]);

        return $dataProvider;
    }
}
