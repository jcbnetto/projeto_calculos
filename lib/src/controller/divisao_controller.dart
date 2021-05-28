import 'package:projeto_calculos/src/model/divisao_model.dart';
import 'package:flutter/material.dart';

class DivisaoController {
  // Controladores;
  double valor1;
  double valor2;
  TextEditingController resultado = TextEditingController();

  var divisaoController;

  // Método de calcular:
  void calcular() {
    // Instancia o model:
    DivisaoModel model = DivisaoModel(valor1, valor2);
    // Calcular:
    model.calcular();
    resultado.text = model.getResultado();
  }
}
