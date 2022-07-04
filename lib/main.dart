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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((e) => Answers(_answerChose, e))
                .toList()
          ],
        ),
      ),
    );
  }
}
