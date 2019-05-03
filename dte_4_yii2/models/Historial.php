<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "historial".
 *
 * @property int $id_historial
 * @property int $id_cliente
 * @property string $nombre
 * @property string $apellidos
 * @property string $nif
 * @property string $direccion
 * @property string $edad
 * @property string $rx
 * @property string $telefono
 * @property string $permiso
 */
class Historial extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'historial';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_cliente'], 'integer'],
            [['nombre', 'apellidos', 'nif', 'direccion', 'edad', 'rx', 'telefono', 'permiso'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_historial' => 'Id Historial',
            'id_cliente' => 'Id Cliente',
            'nombre' => 'Nombre',
            'apellidos' => 'Apellidos',
            'nif' => 'Nif',
            'direccion' => 'Direccion',
            'edad' => 'Edad',
            'rx' => 'Rx',
            'telefono' => 'Telefono',
            'permiso' => 'Permiso',
        ];
    }
}
