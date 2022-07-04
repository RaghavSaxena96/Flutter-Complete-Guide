import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerChose() {
    setState(() {
      _questionIndex++;
    });
    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favorite Color?",
      "What's your favorite Dish?",
      "What's your favorite Animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Quiz App"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            Answers(_answerChose),
            Answers(_answerChose),
            Answers(_answerChose),
          ],
        ),
      ),
    );
  }
}
