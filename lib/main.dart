import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('My App')),
            body: Column(children: [
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: () => print('Answer2 chosen'),
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: () => print('Answer3 chosen!'),
              )
            ])));
  } // build
} // QuizApp