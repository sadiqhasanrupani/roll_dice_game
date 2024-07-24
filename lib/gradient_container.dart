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
          Color(0xFFa57555),
          Color(0xFFffe7d0),
          Color(0xFFfcf8ed),
          //0xFDF8EC
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
