import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int _answerindex = 0;
  var questions = [
    {
      'questionText': 'What\'s is your favorite Animal?',
      'answer': ['Goat', 'cow', 'Tiger', 'lion']
    },
    {
      'questionText': 'What\'s is your favorite sports?',
      'answer': ['Football', 'cricket', 'busketball', 'chess']
    },
    {
      'questionText': 'What\'s is your favorite color?',
      'answer': ['Red', 'Green', 'Blue', 'Yellow']
    },
    {
      'questionText': 'What\'s is your favorite country?',
      'answer': ['Bangladesh', 'India', 'pakisthan', 'united states']
    },
    {
      'questionText': 'What\'s is your favorite frute?',
      'answeer': ['Apple', 'Bananga', 'Orange', 'Mango']
    },
    {
      'questionText': 'What\'s your favorite subject',
      'answer': ['CSE', 'EEE', 'APE', 'CIVIL']
    }
  ];
  void _answerQuestion() {
    setState(() {
      _answerindex = (_answerindex + 1) % 6;
    });
    print(_answerindex);
    if (_answerindex < questions.length) {
      print('You have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questions Apps',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions Apps'),
          centerTitle: true,
        ),
        body: _answerindex < questions.length
            ? Column(
                children: [
                  Questions(questions[_answerindex]['questionText'] as String),
                  ...(questions[_answerindex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('The Quiz is done'),
              ),
      ),
    );
  }
}
