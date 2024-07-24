import 'package:flutter/material.dart';
import 'package:roll_dice_game/gradient_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color(0xFFa57555),
            Color(0xFFffe7d0),
            Color(0xFFfcf8ed),
          ],
        ),
      ),
    );
  }
}
