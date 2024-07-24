import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final double? fontSize;
  final String text;
  final Color? color;

  StyledText({super.key, required this.text, this.fontSize, this.color});

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize ?? 16,
          color: color ?? const Color.fromARGB(255, 26, 20, 36)),
    );
  }
}
