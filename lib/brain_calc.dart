import 'dart:math';

import 'package:flutter/cupertino.dart';

class calcbrain {
  calcbrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overwehight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getinter() {
    if (_bmi >= 25) {
      return 'try to go to gym ';
    } else if (_bmi > 18.5) {
      return 'you have a normal body';
    } else {
      return 'you have lower than the normal weight';
    }
  }
}
