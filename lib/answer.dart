import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerOption;
  final VoidCallback changeQuestion;
  Answer(this.answerOption, this.changeQuestion);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          color: Colors.blue,
          child: Text(
            answerOption,
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          onPressed: changeQuestion,
        ),
      ),
    );
  }
}
