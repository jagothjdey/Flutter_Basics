import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function questionhandler;
  final int questionIndex;

  Quiz(this.questionList, this.questionhandler, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionList[questionIndex]['questionText'],
        ),
        ...(questionList[questionIndex]['answer'] as List<String>)
            .map((answer) => Answer(questionhandler, answer))
            .toList()
      ],
    );
  }
}
