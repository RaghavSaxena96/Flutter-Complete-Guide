import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions;

  Question(this.questions);

  @override
  Widget build(BuildContext context) {
    return Text(questions);
  }
}
