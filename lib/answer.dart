import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;

  Answers(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Answer"),
        onPressed: selectHandler,
      ),
    );
  }
}
