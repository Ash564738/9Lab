import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFDFF3FA),
        appBar: AppBar(
          title: const Text("I Am Rich",
            style: TextStyle(
              fontSize: 30,
              color: Color(0xFFE88FA8),
            ),
          ),
          backgroundColor: const Color(0xFF8EC5D6),
          foregroundColor: const Color(0xFF23404A),
          elevation: 0,
          centerTitle: true,
          // leading: Icon(Icons.arrow_back_ios),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/rich.jpg'),
            // image: NetworkImage('https://images.pexels.com/photos/296282/pexels-photo-296282.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          ),
        ),
      ),
    ),
  );
}

