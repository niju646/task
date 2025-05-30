import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  double _result = 0.0;
  double get result => _result;

  void calculator(String operation, double num1, double num2) {
    switch (operation) {
      case '+':
        _result = num1 + num2;
        break;
      case '-':
        _result = num1 - num2;
        break;
      case '*':
        _result = num1 * num2;
        break;
      case '%':
        _result = num1 % num2;
        break;
      default:
        _result = 0.0;
    }
    notifyListeners();
  }
}
