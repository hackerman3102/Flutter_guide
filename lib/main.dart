import 'package:flutter/material.dart';
import 'package:flutter_guide/result.dart';

import './quiz.dart';

//void main() {
//runApp(MyApp());  //Void main exectues this statement first
//}
void main() => runApp(MyApp()); //Call function in a single line

class MyApp
    extends StatefulWidget //Your class needs to extend predefined Functionalities from another class and every widget needs to inherit either stateless widget or stateful widget

{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore=0;

  void _resetQuiz()
  {
    setState(() {

       _questionIndex = 0;
       _totalScore=0;
    });
  }
  static const _questions = [
    {
      'questionText': 'Fav Color',
      'answers': [
        {'text': 'Black', 'score': 4},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 1}
      ]
    },
    {
      'questionText': 'Fav Movie',
      'answers': [
        {'text': 'Avengers', 'score': 2},
        {'text': '3 Idiots', 'score': 4},
        {'text': 'PKP', 'score': 12},
        {'text': 'BMB', 'score': 20}
      ]
    },
    {
      'questionText': 'Fav Team',
      'answers': [
        {'text': 'France', 'score': 10},
        {'text': 'Argentina', 'score': 7},
        {'text': 'Spain', 'score': 12},
        {'text': 'Portugal', 'score': 20}
      ]
    },
    {
      'questionText': 'Fav Team',
      'answers': [
        {'text': 'France', 'score': 10},
        {'text': 'Argentina', 'score': 7},
        {'text': 'Spain', 'score': 12},
        {'text': 'Portugal', 'score': 20}
      ]
    },
  ];
  
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex += 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is AppBar"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
