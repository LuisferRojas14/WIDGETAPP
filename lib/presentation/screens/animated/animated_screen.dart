import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
  static const name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
  //
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(microseconds: 500),
          curve: Curves.easeOutCubic,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30)
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
