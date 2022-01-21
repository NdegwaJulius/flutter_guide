import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);

  final List<Map<dynamic, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText']?.toString() ??
              '', //this returns a string which represents an object; you can post this on stack overflow foer people facing the same problem using this course
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
