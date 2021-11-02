import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext contex) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answerText),
          textColor: Colors.blue,
          color: Colors.white,
          onPressed: selectHandler),
    );
  }
}
