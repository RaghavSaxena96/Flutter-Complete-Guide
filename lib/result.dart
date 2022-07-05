import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int _totalScore;
  Function _resetHandler;

  Result(this._totalScore, this._resetHandler);

  String get resultText {
    var text;
    if (_totalScore <= 8) {
      text = "You are innocent";
    } else {
      text = "You are evil get a therapist";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: _resetHandler,
          child: Text("Restart Quiz"),
          color: Colors.blue,
        ),
      ],
    ));
  }
}
