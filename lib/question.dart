import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child:
            Text(question, style: TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }
}
