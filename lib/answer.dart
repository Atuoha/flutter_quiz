import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final answerFnc;
  final String answer;

  AnswerButton(this.answerFnc, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(child: Text(answer), onPressed: answerFnc),
    );
  }
}
