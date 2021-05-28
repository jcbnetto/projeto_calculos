class SomaModel {
  final double valor1;
  final double valor2;
  String _resultado = '';

  SomaModel(this.valor1, this.valor2);

  // Métodos de calculo:
  void calcular() {
    var soma = valor1 + valor2;

    _resultado = soma.toStringAsFixed(2);
  }

  // Método de acesso:
  String getResultado() {
    return _resultado;
  }
}
