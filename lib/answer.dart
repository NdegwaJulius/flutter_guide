import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //In Answer.dart your selectHandler is of type Function not of type Function(), and your clickk is Function(). simply change this in your Answer.dart
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }

  Function get newMethod => selectHandler;
}
