import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function selectHandler;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.selectHandler,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((e) => Answers(selectHandler, e))
              .toList()
        ],
      ),
    );
  }
}
