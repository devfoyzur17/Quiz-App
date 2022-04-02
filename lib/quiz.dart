import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function anwerQuestion;
  final int questionIndex;

  Quiz(
      {required this.question,
      required this.anwerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Question(question[questionIndex]["questionText"] as String),
        ...(question[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => anwerQuestion(answer["score"]), answer["name"] as String);
        })
      ],
    );
  }
}
