import 'package:flutter/material.dart';

String sum({int a = 0, int b = 0}) {
  return '${a + b}';
}

void main() {
  const a = 20;
  const b = 10;
  final addition = sum(a: a, b: b);

  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
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
      ),
    ),
  ));
}

// class AdditionContainer extends StatelessWidget {
  
// }