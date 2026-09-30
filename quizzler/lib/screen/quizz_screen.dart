import 'package:flutter/material.dart';
import '../data/quizz_data.dart';
import '../models/question.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void _nextQuestion(int selectedIndex) {
    if (selectedIndex == quizQuestions[currentQuestionIndex].correctAnswerIndex) {
      score++;
    }
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex >= quizQuestions.length) {
      return Scaffold(
        appBar: AppBar(title: Text("Quiz Complete")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You scored: $score/${quizQuestions.length}",
                  style: TextStyle(fontSize: 24)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentQuestionIndex = 0;
                    score = 0;
                  });
                },
                child: Text("Restart Quiz"),
              ),
            ],
          ),
        ),
      );
    }

    final question = quizQuestions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(title: Text("Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center( // Center the content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch buttons to equal width
            children: [
              Text(
                question.question,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center, // Center the question text
              ),
              SizedBox(height: 20),
              ...List.generate(
                question.options.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0), // Add spacing between buttons
                  child: ElevatedButton(
                    onPressed: () => _nextQuestion(index),
                    child: Text(question.options[index]),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50), // Make buttons equal in width and height
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
