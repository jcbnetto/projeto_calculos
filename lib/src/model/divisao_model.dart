class DivisaoModel {
  final double valor1;
  final double valor2;
  String _resultado = '';

  DivisaoModel(this.valor1, this.valor2);

  // Métodos de calculo:
  void calcular() {
    var dividir = valor1 / valor2;

    _resultado = dividir.toStringAsFixed(2);
  }

  // Método de acesso:
  String getResultado() {
    return _resultado;
  }
}
