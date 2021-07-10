import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What IDE is best for Flutter?',
      'answers': [
        {'text': 'Android Studio', 'score': 10},
        {'text': 'VS Code', 'score': 5},
        {'text': 'Atom', 'score': 0},
        {'text': 'Bracket', 'score': 0},
        {'text': 'Sublime Text', 'score': 0},
      ]
    },
    {
      'question': 'Does Flutter make use of state management?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
        {'text': 'Not Sure', 'score': 0}
      ]
    },
    {
      'question': 'Which Company manages Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'JetBeans', 'score': 0},
        {'text': 'Oracle', 'score': 0},
        {'text': 'Google', 'score': 10},
        {'text': 'Github', 'score': 0}
      ]
    },
    {
      'question': 'Why is Flutter widely used?',
      'answers': [
        {'text': 'Because of it\'s fastness/efficiency', 'score': 10},
        {'text': 'Because of it\'s hot reload', 'score': 0},
        {'text': 'Because of it\'s state management', 'score': 0},
        {'text': 'Because of it\'s widgets', 'score': 0},
        {'text': 'Because of java and c++ code looklike', 'score': 0}
      ]
    },
    {
      'question': 'What language is shipped with Flutter?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Javascript', 'score': 0},
        {'text': 'C++', 'score': 0},
        {'text': 'Dart', 'score': 10},
        {'text': 'Python', 'score': 0},
      ]
    },
  ];

  var _questionIndex = 0;
  int totalScore = 0;

  void _resetFnc() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
    print('resetting...');
  }

  void _answerButton(int score) {
    setState(() {
      if (_questionIndex < 5) {
        _questionIndex += 1;
      }
    });
    print(_questionIndex);
    totalScore += score;
    print(totalScore);

    if (_questionIndex < _questions.length) {
      print('There is a question ahead!');
    } else {
      print('There is no question ahead!');
    }
  }

  Widget build(BuildContext context) {
    var text;
    if (_questionIndex < _questions.length) {
      text = _questions[_questionIndex]['question'];
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(text, _questions, _questionIndex, _answerButton)
            : Result('You Scored ' + totalScore.toString(), _resetFnc),
      ),
    );
  }
}
