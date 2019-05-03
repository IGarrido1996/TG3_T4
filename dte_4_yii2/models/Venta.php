<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "venta".
 *
 * @property int $id_venta
 * @property string $lente
 * @property string $montura
 * @property string $importe
 * @property string $observaciones
 * @property string $tipo
 */
class Venta extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'venta';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['lente', 'montura', 'importe', 'observaciones', 'tipo'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_venta' => 'Id Venta',
            'lente' => 'Lente',
            'montura' => 'Montura',
            'importe' => 'Importe',
            'observaciones' => 'Observaciones',
            'tipo' => 'Tipo',
        ];
    }
}
