// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:learning_basics/Answer.dart';
import 'package:learning_basics/question.dart';

void main() {
  runApp(MyApp());
}

var indx = 0;
var question = [
  "What is Your Favourite Color?",
  "What is your favourite Animal?",
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      indx++;
      if (indx == 2) indx = 0;
    });
    print(indx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(question: question[indx]),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
