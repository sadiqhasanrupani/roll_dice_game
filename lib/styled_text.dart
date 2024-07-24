import 'package:flutter/material.dart';
import "package:roll_dice_game/utils.dart";

class StyledText extends StatelessWidget {
  final int a;
  final int b;
  const StyledText({super.key, this.a = 10, this.b = 20});

  @override
  Widget build(context) {
    final addition = Utils.sum(a: a, b: b);
    return Text(
      'The Addition of $a and $b is: $addition',
      style:
          const TextStyle(fontSize: 24, color: Color.fromARGB(255, 26, 20, 36)),
    );
  }
}
