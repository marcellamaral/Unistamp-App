import 'dart:math';

import '../model/medidas_model.dart';
import 'package:get/get.dart';

class Calculate {
  late Medidas _medidas;

  final RxDouble _abertura = 0.0.obs;
  final RxDouble _comprimento = 0.0.obs;
  get abertura => _abertura;
  get comprimento => _comprimento;

  final RxDouble _resultadoForca = 0.0.obs;
  final RxDouble _raioInterno = 0.0.obs;
  get resultadoForca => _resultadoForca;
  get raioInterno => _raioInterno;

  set medidas(Medidas med) => _medidas = med;

  void calcular() {
    calcularAbertura();
    calcularComprimento();
    calcularForca();
    calcularRaioInterno();
  }

  void calcularAbertura() {
    if (_medidas.espessura <= 0.7) {
      _abertura.value = 6.0 * _medidas.espessura;
    } else if (_medidas.espessura > 0.8 && _medidas.espessura <= 3.0) {
      _abertura.value = 8.0 * _medidas.espessura;
    } else if (_medidas.espessura > 3.0 && _medidas.espessura <= 9.0) {
      _abertura.value = 10.0 * _medidas.espessura;
    } else if (_medidas.espessura > 9.0 && _medidas.espessura <= 14.0) {
      _abertura.value = 12.0 * _medidas.espessura;
    } else if (_medidas.espessura > 14) {
      _abertura.value = 14.0 * _medidas.espessura;
    }
  }

  void calcularComprimento() {
    if (_medidas.angulo == 30) {
      _comprimento.value = 1.94 * _abertura.value;
    } else if (_medidas.angulo == 45) {
      _comprimento.value = 1.31 * _abertura.value;
    } else if (_medidas.angulo == 60) {
      _comprimento.value = 1 * _abertura.value;
    } else if (_medidas.angulo == 90) {
      _comprimento.value = 0.71 * _abertura.value;
    } else if (_medidas.angulo == 120) {
      _comprimento.value = 0.58 * _abertura.value;
    } else if (_medidas.angulo == 135) {
      _comprimento.value = 0.55 * _abertura.value;
    } else if (_medidas.angulo == 165) {
      _comprimento.value = 0.51 * _abertura.value;
    }
  }

  void calcularForca() {
    double valor = double.parse(((1.42 *
                _medidas.tensao *
                pow(_medidas.espessura, 2) *
                _medidas.largura) /
            (1000 * _abertura.value))
        .toStringAsFixed(2));

    _resultadoForca.value = valor;
  }

  void calcularRaioInterno() {
    double valor =
        double.parse(((5 * _abertura.value) / 32).toStringAsFixed(2));
    _raioInterno.value = valor;
  }
}
