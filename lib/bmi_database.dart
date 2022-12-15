import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiDatabase {

  final int height;
  final int weight;

  BmiDatabase({
    @required this.height,
    @required this.weight,
  });

  double _bmi;

  String bmiCalculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Повышено';
    } else if (_bmi >= 18.5) {
      return 'Норма';
    } else {
      return 'Понижено';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Вес тела выше нормы. Старайтесь больше заниматься спортом.';
    } else if (_bmi >= 18.5) {
      return 'У вас нормальная масса тела. Отлично!';
    } else {
      return 'Вес тела ниже нормы. Старайтесь усиленно питаться';
    }
  }
}