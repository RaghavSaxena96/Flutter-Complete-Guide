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
  final _questions = const [
    {
      'questionText': "What's your favorite Color?",
      'answers': ["Red", "Blue", "Green", "Black", "Yellow"]
    },
    {
      'questionText': "What's your favorite Dish?",
      'answers': ["Puri", "Chicken", "Wraps", "Rice Bowl", "Noodles"]
    },
    {
      'questionText': "What's your favorite Animal?",
      'answers': ["Dog", "Cat", "Elephant", "Tiger", "Lion"]
    }
  ];

  var _questionIndex = 0;

  void _answerChose() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
      print("Answer Chosen");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((e) => Answers(_answerChose, e))
                      .toList()
                ],
              )
            : Center(child: Text("You have Completed the Quiz")),
      ),
    );
  }
}
