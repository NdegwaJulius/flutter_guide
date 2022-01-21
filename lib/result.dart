import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

//create a getterr
  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'Awesome human being';
    } else if (resultScore <= 15) {
      resultText = 'Learn solidity ';
    } else if (resultScore > 75) {
      resultText = 'welcome to meterverse';
    } else {
      resultText = 'Sorry ,buy land in earth2.0';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Reset Quiz!'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
