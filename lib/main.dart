// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:learning_basics/quiz.dart';
import 'package:learning_basics/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _indx = 0;
  static const _question = [
    {
      'Question Text': "What's your favourite color?",
      'Answers': ["Red", "Green", "Blue", "White"],
    },
    {
      'Question Text': "What's your favourite Animal?",
      'Answers': ["Cow", "Chicken", "Tiger", "Lion"],
    },
    {
      'Question Text': "who  is your favourite person?",
      'Answers': ['Sayed Tahsin'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _indx++;
    });
    if (_indx < _question.length) {
      print("we have more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 250, 250, 250),
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: _indx < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                indx: _indx,
                question: _question,
              )
            : Result(),
      ),
    );
  }
}
