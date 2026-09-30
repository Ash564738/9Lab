import 'package:flutter/material.dart';
import 'package:flutter_vku_lab9/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xFFDFF3FA),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF8EC5D6),
          secondary: Color(0xFFF3A6B8),
          surface: Color(0xFFDFF3FA),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF3A6B8),
            foregroundColor: const Color(0xFF542C39),
          ),
        ),
      ),
      home: LoadingScreen(),
    );
  }
}
