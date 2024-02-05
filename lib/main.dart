import 'package:flutter/material.dart';
import 'package:quizpractice/button.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(227, 192, 50, 173),
                  Color.fromARGB(215, 200, 159, 34)
                ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              ),
              child: Button(),
            ),
            HelloWidget()
          ],
        ),
      ),
    ),
  );
}

class HelloWidget extends StatefulWidget {
  const HelloWidget({super.key});

  @override
  State<HelloWidget> createState() => _HelloWidgetState();
}

class _HelloWidgetState extends State<HelloWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.repeat(reverse: true, period: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Positioned(
        left: _controller.value * width,
        child: child!,
      ),
      child: const Positioned(
        left: 0.5,
        child: Text(
          "Hello, Hayes!",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
