<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "presupuesto".
 *
 * @property int $id_presupuesto
 * @property string $estado
 */
class Presupuesto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'presupuesto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['estado'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_presupuesto' => 'Id Presupuesto',
            'estado' => 'Estado',
        ];
    }
}
