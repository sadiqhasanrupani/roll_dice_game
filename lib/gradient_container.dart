import 'package:flutter/material.dart';
import 'package:roll_dice_game/styled_text.dart';

class GradientContainer extends StatelessWidget {
  //^ Initializing a constructor.
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(0, 174, 174, 230),
          Color(0xAB7A5D),
          Color(0xFDF8EC),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
