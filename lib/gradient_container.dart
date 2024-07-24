import 'package:flutter/material.dart';
import "utils.dart";

class GradientContainer extends StatelessWidget {
  final int a;
  final int b;

  //^ Initializing a constructor.
  const GradientContainer({super.key, this.a = 10, this.b = 20});

  @override
  Widget build(context) {
    final addition = Utils.sum(a: a, b: b);
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(0, 174, 174, 230),
          Color(0xAB7A5D),
          Color(0xFDF8EC),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Text(
          'The Addition of $a and $b is: $addition',
          style: const TextStyle(
              fontSize: 24, color: Color.fromARGB(255, 26, 20, 36)),
        ),
      ),
    );
  }
}
