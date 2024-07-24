import 'package:flutter/material.dart';
import 'package:roll_dice_game/gradient_container.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    );
  }
}
