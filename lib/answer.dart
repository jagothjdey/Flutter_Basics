import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String question;

  Answer(this.handler, this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(question),
        onPressed: handler,
      ),
    );
  }
}
