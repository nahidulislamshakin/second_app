import 'package:flutter/cupertino.dart';

class Questions extends StatelessWidget {
  String questionsTest;
  Questions(this.questionsTest);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(questionsTest),
    );
  }
}
