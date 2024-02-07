import 'package:flutter/material.dart';

enum MyColor { custom, blue, green, yellow, teal, orange, pink }

class AppTheme {
  final MyColor color;

  AppTheme({required this.color});

  Color _enumToColor(MyColor color) {
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

  ThemeData theme() {
    return ThemeData(
        colorSchemeSeed: _enumToColor(color),
        appBarTheme: const AppBarTheme(centerTitle: false));
  }
}
