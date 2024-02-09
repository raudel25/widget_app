import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10;

  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 50;
    height = random.nextInt(300) + 50;
    borderRadius = random.nextInt(100) + 10;
    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Animated container')),
        body: Center(
          child: AnimatedContainer(
            width: width,
            height: height,
            curve: Curves.bounceOut,
            duration: const Duration(milliseconds: 400),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                color: color),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: changeShape,
          child: const Icon(Icons.play_arrow_rounded),
        ));
  }
}
