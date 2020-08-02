import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex <= 1) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
