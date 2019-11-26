import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite colour?',
        'answers': ['Black', 'White', 'Pink', 'Red']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Lion', 'Snak', 'Cat', 'Dog']
      },
      {
        'questionText': 'What\'s your favorite person?',
        'answers': ['Caio', 'Caio', 'Caio', 'Caio']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
