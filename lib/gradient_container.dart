import 'package:flutter/material.dart';
import 'package:roll_dice_game/component/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  //^ Initializing a constructor.
  const GradientContainer(
      {super.key, required this.colors, this.begin, this.end});
  final List<Color> colors;
  final AlignmentGeometry? begin;
  final AlignmentGeometry? end;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: begin ?? Alignment.topLeft,
            end: end ?? Alignment.bottomRight),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
