// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      child: Text(
        question,
        style: const TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
