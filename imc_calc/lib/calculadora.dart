import 'dart:math';

class Calculadora {
  Calculadora({ required this.altura, required this.peso});

  final int altura;
  final int peso;
  double? _imc;

  String calcularIMC(){
    _imc = peso/ pow(altura/100, 2);
    return _imc!.toStringAsFixed(1);
  }

  String obterResultado() {

    if (_imc! >= 25){
      return 'Acima do peso';
    } else if (_imc! >= 18) {
      return 'Normal';
    }else {
      return 'Abaixo do peso';
    }
  }

  String obterInterpretacao(){
    if (_imc! >= 25){
      return 'Você precisar tentar comer menos e se exercitar mais.';
    } else if (_imc! >= 18) {
      return 'Excelente, seu peso está normal.';
    }else {
      return 'Peso abaixo do normal, você precisa tentar comer mais.';
    }
  }

}