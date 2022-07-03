import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () {
                setState(() {
                  questionIndex++;
                });
                print("Answer Chosen");
              },
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                setState(() {
                  questionIndex++;
                });
                print("Answer Chosen");
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                setState(() {
                  questionIndex++;
                });
                print("Answer Chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
