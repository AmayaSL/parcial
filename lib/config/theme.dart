import 'package:flutter/material.dart';

const List<Color> _colorTheme = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0});

  ThemeData themeData() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorTheme[selectedColor]);
  }
}
