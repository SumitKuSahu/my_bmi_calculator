import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain
{
  final height;
  final weight;
  CalculatorBrain({@required this.height,@required this.weight
});
  double _bmi;

  String calculateBmi()
  {
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult()
  {
    if(_bmi>=25)
      return 'Overweight';
    else if (_bmi>18.5)
      return 'Normal';
    else
      return 'Underweight';
  }


  String bmimessage()
  {
    if(_bmi>=25)
      return 'You have higher than normal weight.Try to exercise more.';
    else if (_bmi>18.5)
      return 'Good job you have a normal body weight';
    else
      return 'You have lower than body weight.Try to eat more.';
  }
}