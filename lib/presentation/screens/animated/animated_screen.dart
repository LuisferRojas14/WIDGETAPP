import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 120;
  double height = 120;
  Color color = Colors.indigo;
  double borderRadius = 20.0;

  void changeShape(){
final random = Random();
width = random.nextInt(300) + 50;
height = random.nextInt(300)+ 50;
color = Color.fromRGBO(
  random.nextInt(256),
  random.nextInt(256),
  random.nextInt(256),
  1,
);
borderRadius = random.nextInt(100)+ 10;
setState(() {});


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(microseconds: 500),
        curve: Curves.easeOutCubic,
        width: width <= 0 ? 0 : width,
        height: height <= 0 ? 0 : height,
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius)),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed:changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
