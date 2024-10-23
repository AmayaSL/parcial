import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 86, 75, 59);

const List<Color> colorTheme = [
  _customColor,
  Color.fromARGB(255, 160, 6, 6),
  Color.fromARGB(255, 11, 160, 147),
  Colors.redAccent,
  Colors.orangeAccent
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0});

  ThemeData themeData() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorTheme[selectColor],
        scaffoldBackgroundColor: const Color.fromARGB(255, 80, 89, 202),
        appBarTheme: AppBarTheme(
            backgroundColor: colorTheme[selectColor],
            titleTextStyle:
                const TextStyle(color: Colors.white, fontSize: 20)));
  }
}
