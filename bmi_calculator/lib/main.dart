import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF8EC5D6),
        scaffoldBackgroundColor: const Color(0xFFDFF3FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8EC5D6),
          foregroundColor: Color(0xFF23404A),
        ),
      ),
      home: InputPage(),
    );
  }
}