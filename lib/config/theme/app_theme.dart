import 'package:flutter/material.dart';

enum MyColor { custom, blue, green, yellow, teal, orange, pink }

Color enumToColor(MyColor color) {
  switch (color) {
    case MyColor.custom:
      return const Color(0xFF49149F);
    case MyColor.blue:
      return Colors.blue;
    case MyColor.green:
      return Colors.green;
    case MyColor.yellow:
      return Colors.yellow;
    case MyColor.teal:
      return Colors.teal;
    case MyColor.orange:
      return Colors.orange;
    case MyColor.pink:
      return Colors.pink;
  }
}

class AppTheme {
  final MyColor color;
  final bool isDarkMode;

  AppTheme({this.color = MyColor.custom, this.isDarkMode = false});

  ThemeData theme() {
    return ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: enumToColor(color),
        appBarTheme: const AppBarTheme(centerTitle: false));
  }

  AppTheme copyWith({MyColor? color, bool? isDarkMode}) => AppTheme(
      color: color ?? this.color, isDarkMode: isDarkMode ?? this.isDarkMode);
}
