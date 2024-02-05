import 'package:flutter/material.dart';
import 'package:quizpractice/button.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(229, 17, 177, 118),
              Color.fromARGB(215, 200, 159, 34)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: Button(),
        ),
      ),
    ),
  );
}
