<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Venta */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="venta-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'lente')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'montura')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'importe')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'observaciones')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tipo')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
