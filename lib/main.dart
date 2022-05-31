import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('My App')),
            body: Column(children: const [
              Text('The questions'),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: null,
              )
            ]))); // MaterialApp
  } // build
} // QuizApp