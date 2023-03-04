import 'package:flutter/cupertino.dart';
import 'package:learning_basics/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final VoidCallback answerQuestion;
  final int indx;

  const Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.indx,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Question(question: question[indx]['Question Text'] as String),
        ...(question[indx]['Answers'] as List<String>).map(
          (answer) {
            return Answer(answerQuestion, answer);
          },
        ).toList(),
      ],
    );
  }
}
