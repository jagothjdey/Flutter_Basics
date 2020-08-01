import 'package:flutter/material.dart';
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

  void _answerQuestionFirst() {
    setState(() {
      _questionIndex = 0;
    });
  }

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
                RaisedButton(
                  child: Text(questions[0]),
                  onPressed: _answerQuestionFirst,
                ),
                RaisedButton(
                  child: Text(questions[1]),
                  onPressed: _answerQuestionSecond,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
