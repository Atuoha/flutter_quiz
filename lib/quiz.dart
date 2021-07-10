import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final text;
  final questions;
  final int questionIndex;
  final answerButton;

  Quiz(this.text, this.questions, this.questionIndex, this.answerButton);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(text.toString()),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(
              () => answerButton(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
