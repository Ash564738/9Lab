import 'package:flutter/material.dart';
import 'dart:math';

// Creates a Material App
void main() => runApp(
  MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFFDFF3FA),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF8EC5D6),
        secondary: const Color(0xFFF3A6B8),
      ),
    ),
    home: BallPage(),
  ),
);
// Creates a Scaffold with
// appbar using Stateless widget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFF3FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8EC5D6),
        foregroundColor: const Color(0xFF23404A),
        title: const Text('Magic 8 Ball'),
      ),
      body: Ball(),
    );
  }
}

// Creates a Stateful widget
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            // Random.nextInt(n) returns a random integer from 0 to n-1
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        // Adding images
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}