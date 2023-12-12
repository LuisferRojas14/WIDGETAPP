import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.brown,
  Colors.teal,
  Colors.indigo,
  Colors.cyan,
  Colors.lime,
  Colors.amber,
  Colors.grey,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'selectedColor must be less than 0'),
        assert(selectedColor < colorList.length,
            'selectedColor must be less than ${colorList.length-1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
