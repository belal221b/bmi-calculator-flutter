import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  int height;
  int weight;
  double _bmi;

  String bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (15.5 < _bmi && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal weight. You should exercise more';
    } else if (15.5 < _bmi && _bmi < 25) {
      return 'You have a normal body Weight. Good Job';
    } else {
      return 'You have lower than normal weight. You should eat a bit more';
    }
  }
}
