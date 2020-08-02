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
  static const _questions = [
    {
      'questionText': 'What\'s yout favorite color',
      'answer': [
        {'option': 'BLACK', 'score': 10},
        {'option': 'RED', 'score': 20},
        {'option': 'WHITE', 'score': 30},
        {'option': 'ORANGE', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s yout favorite car',
      'answer': [
        {'option': 'BMW', 'score': 10},
        {'option': 'AUDI', 'score': 20},
        {'option': 'MARCEDES', 'score': 30},
        {'option': 'VOLVO', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s yout favorite animal',
      'answer': [
        {'option': 'DOG', 'score': 10},
        {'option': 'COW', 'score': 20},
        {'option': 'CAT', 'score': 30},
        {'option': 'SNAKE', 'score': 40},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questionList: _questions,
                questionhandler: _answerQuestion,
              )
            : Result(_totalScore),
      ),
    );
  }
}
