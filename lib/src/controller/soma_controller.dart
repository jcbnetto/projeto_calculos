import 'package:projeto_calculos/src/model/soma_model.dart';
import 'package:flutter/material.dart';

class SomaController {
  // Controladores;
  double valor1;
  double valor2;
  TextEditingController resultado = TextEditingController();

  var somaController;

  // Método de calcular:
  void calcular() {
    // Instancia o model:
    SomaModel model = SomaModel(valor1, valor2);
    // Calcular:
    model.calcular();
    resultado.text = model.getResultado();
  }
}
