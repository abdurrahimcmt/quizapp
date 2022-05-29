import 'package:flutter/material.dart';
import 'package:quiz_app/anser.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback ansQuestion;
  final int questionIndex;

  const Quiz({
    Key? key,
    required this.questions,
    required this.ansQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((anser) {
          return Anser(
              ansQuestion: () => ansQuestion(),
              anser: anser['Text'].toString());
        }).toList(),
      ],
    );
  }
}
