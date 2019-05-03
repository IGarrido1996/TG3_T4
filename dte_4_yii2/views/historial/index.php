<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Historials';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="historial-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Historial', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_historial',
            'id_cliente',
            'nombre',
            'apellidos',
            'nif',
            //'direccion',
            //'edad',
            //'rx',
            //'telefono',
            //'permiso',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
