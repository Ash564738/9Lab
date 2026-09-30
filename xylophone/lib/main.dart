import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFDFF3FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8EC5D6),
          secondary: const Color(0xFFF3A6B8),
        ),
      ),
      home: Scaffold(
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  final AudioPlayer player = AudioPlayer(); // Tạo một instance của AudioPlayer

  void playSound(int noteNumber) async {
    // Đảm bảo file âm thanh được tải từ assets
    await player.setSource(AssetSource('note$noteNumber.wav'));
    player.resume(); // Phát âm thanh
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
        ),

        child: const SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: const Color(0xFFF3A6B8), noteNumber: 1),
          buildKey(color: const Color(0xFFF6B6A8), noteNumber: 2),
          buildKey(color: const Color(0xFFF7D59C), noteNumber: 3),
          buildKey(color: const Color(0xFFA9DCCB), noteNumber: 4),
          buildKey(color: const Color(0xFF8EC5D6), noteNumber: 5),
          buildKey(color: const Color(0xFFA9BFE8), noteNumber: 6),
          buildKey(color: const Color(0xFFC6B4E6), noteNumber: 7),
        ],
      ),
    );
  }
}