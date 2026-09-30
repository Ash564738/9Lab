import 'package:flutter/material.dart';
import 'screen/quizz_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFDFF3FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8EC5D6),
          secondary: const Color(0xFFF3A6B8),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF8EC5D6),
          foregroundColor: Color(0xFF23404A),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF3A6B8),
            foregroundColor: const Color(0xFF542C39),
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizScreen(),
    );
  }
}
