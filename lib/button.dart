import "dart:math";
import "package:flutter/material.dart";

class Button extends StatefulWidget {
  const Button({super.key});
  @override
  State<Button> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<Button> {
  final randomizer = Random();
  var activeCatImage = 'lib/pictures/cat-1.jpeg';

  void rollcat() {
    var catroll = Random().nextInt(4) + 1;
    setState(() {
      activeCatImage = 'lib/pictures/cat-$catroll.jpeg';
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(activeCatImage,
              width: 300, alignment: Alignment.topCenter),
          Text(
            'Welcome to the most important quiz to ever have existed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.00,
            ),
          ),
          ElevatedButton(
            onPressed: rollcat,
            child: const Text(
              'Meow!',
              style: TextStyle(color: Colors.black, fontSize: 32.00),
            ),
          ),
          Text(
            'Dew you have what it takes?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.00,
            ),
          ),
        ],
      ),
    );
  }
}
