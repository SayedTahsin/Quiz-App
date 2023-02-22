// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final VoidCallback selectHendler;
  final String answerText;
  const Answer(this.selectHendler, this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 11, 133, 233),),
        onPressed: selectHendler,
        child: Text(answerText),
      ),
    );
  }
}
