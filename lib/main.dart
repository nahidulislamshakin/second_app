import 'package:flutter/material.dart';
import 'package:second_app/question.dart';
import 'package:second_app/answer.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  _Quizapp createState() {
    return _Quizapp();
  }
}

class _Quizapp extends State<Quiz> {
  int idx = 0;
  var questionlist = [
    {
      'question': 'what is favorite color?',
      'answer': ['red', 'green', 'blue'],
    },
    {
      'question': 'what is favorite animal?',
      'answer': ['dog', 'cat', 'lion'],
    },
    {
      'question': 'who is favorite player?',
      'answer': ['shakib', 'mashrafee', 'mushfiq'],
    }
  ];
  void changeQuestion() {
    setState(() {
      idx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Quiz App",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
            centerTitle: true,
          ),
          body: idx < questionlist.length
              ? Column(
                  children: [
                    Question(questionlist[idx]['question'] as String),
                    ...(questionlist[idx]['answer'] as List<String>)
                        .map((answerOption) {
                      return Answer(answerOption, changeQuestion);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text("Quiz is done",
                      style: TextStyle(fontSize: 20, color: Colors.black))),
        ));
  }
}
