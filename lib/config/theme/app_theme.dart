import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 136, 131, 131);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.pink,
  Colors.orange,
  Colors.green,
  Colors.yellow,
  Colors.black12,
  Colors.brown,
  Colors.grey,
  Colors.black,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'selected Color must be greater than 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.dark);
  }
}
