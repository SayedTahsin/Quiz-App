// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:learning_basics/Answer.dart';
import 'package:learning_basics/question.dart';

void main() {
  runApp(MyApp());
}

var indx = 0;
const question = [
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
      if (indx == 3) indx = 0;
    });
    print(indx);
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
                fontWeight: FontWeight.bold),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(question: question[indx]['Question Text'] as String),
            ...(question[indx]['Answers'] as List<String>).map(
              (answer) {
                return Answer(answerQuestion, answer);
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}
