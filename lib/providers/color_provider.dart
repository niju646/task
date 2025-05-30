import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color _currentColor = Colors.red;
  Color get currentColor => _currentColor;

  void changeColor(Color newColor) {
    _currentColor = newColor;
    notifyListeners();
  }

  void refresh() {
    _currentColor = Colors.grey;
    notifyListeners();
  }
}
