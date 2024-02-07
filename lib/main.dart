import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(color: MyColor.custom).theme(),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
