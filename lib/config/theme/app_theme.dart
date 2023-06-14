import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.indigo,
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.purpleAccent,
];

class AppTheme {
  late final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length-1,
    'Colors must be between 0 and ${_colorThemes.length-1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}