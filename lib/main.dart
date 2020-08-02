import 'package:flutter/material.dart';
import './quiz.dart';

// rebasing done

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
      'answer': ['Black', 'Blue', 'Red', 'White'],
    },
    {
      'questionText': 'What\'s yout favorite car',
      'answer': ['BMW', 'Audi', 'Benz', 'Volvo'],
    },
    {
      'questionText': 'What\'s yout favorite animal',
      'answer': ['Cow', 'Cat', 'Dog', 'Snake'],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
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
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Center(
                child: Text(
                  'You did it',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
      ),
    );
  }
}
