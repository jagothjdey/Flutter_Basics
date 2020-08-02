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

  // ignore: unused_element
  void _answerQuestionFirst() {
    setState(() {
      _questionIndex = 0;
    });
  }

  // ignore: unused_element
  void _answerQuestionSecond() {
    setState(() {
      _questionIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your mother name',
      'What\'s your father name',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Column(
              children: [
                Answer(
                  _answerQuestionFirst,
                  questions[0],
                ),
                Answer(
                  _answerQuestionSecond,
                  questions[1],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
