import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _restartGame() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'White', 'score': 9},
          {'text': 'Pink', 'score': 8},
          {'text': 'Red', 'score': 7},
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Snake', 'score': 10},
          {'text': 'Wale', 'score': 9},
          {'text': 'Dog', 'score': 8},
          {'text': 'Car', 'score': 7},
        ]
      },
      {
        'questionText': 'What\'s your favorite person?',
        'answers': [
          {'text': 'Caio', 'score': 10},
          {'text': 'Caio', 'score': 9},
          {'text': 'Caio', 'score': 8},
          {'text': 'Caio', 'score': 7},
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Flutter App!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_restartGame, _totalScore),
      ),
    );
  }
}
