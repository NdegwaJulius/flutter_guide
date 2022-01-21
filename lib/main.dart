import 'package:flutter/material.dart';
import 'package:flutter_guide/result.dart';

import './question.dart';
import './answer.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 13},
        {'text': 'White', 'score': 11},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 23},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 35},
        {'text': 'Lion', 'score': 69},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Ndegwa', 'score': 1},
        {'text': 'Jean', 'score': 1},
        {'text': 'Maya', 'score': 19},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    // also you can use the short hand _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);

    // introducing if statements. This is a boolean statement ; has only a true or false kind
    //the statement will only execute if the condition is true. this is a normal widget check
    // the or(||) condition operator
    //you can use the () like in math where you get to set one condition to be true like say
    //the user name to be alwaystrue
    /*
      void main(){
        var isLoggedIn = false;
        var userName= 'Julius;
        var password = '1234erty;
        var age = 30;
        var hasCorrectCredentials = userName == 'Julius' && (password == '1234erty' || age > 20);
        if (hasCorrectCredentials){
          print('Logged In!);

        } else if(isLogged){
          print('overruled!');

        } else {
          print('failed');
           
        }

      }
      */
    /*
      // Null means a variable which has no values assign ever and the variable is initialized with nothing like
      // null can always be assigned to any variable
      //can be used in booolean comparisons

      void main(){
        var userName;

        //..........


      }
      */
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('we have more questions');
    } else {
      // ignore: avoid_print
      print('its over dude');
    }
  }

  @override
  Widget build(BuildContext context) {
    //final is used whenever there is no need to change the values ;
    // const is used for compile time constant
    // all objects in dart are stored in memory by dart as pointers

    // const is only used when the value is not intended to change anywhere else in the code
    /*var dummy = ['hey', 'hello', 'goodbye'];
    dummy.add('julio');
    print(dummy);
    */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
