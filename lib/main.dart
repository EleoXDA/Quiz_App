import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//  runApp(QuizApp());
//}
//a shorter was of saying this, is:
void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
              Question(questions[_questionIndex]),
              Answer(),
              Answer(),
              Answer(),
            ])));
  } // build
} // QuizApp