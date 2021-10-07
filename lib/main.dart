import 'package:first/quiz.dart';
import 'package:first/result.dart';
import 'package:flutter/material.dart';

void main() {
  //Entry point
  runApp(MyApp()); //Giving object of our App
}

/* Extending Stateful because we wanted to change state(instance member) of 
our widget */
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//Create a new class for the changing instance members and our code shifts here
class _MyAppState extends State<MyApp> {
  final Map<String, Map<String, int>> _questionAnswers = {
    "Your fav color ?": {"Black": 10, "Red": 5, "Blue": 1},
    "Your fav movie ?": {"Godfather": 10, "Interstellar": 5, "Hulchul": 1},
    "Your fav programming language ?": {
      "Assembly Language": 10,
      "C": 5,
      "Java": 1
    }
  };

  final Map<int, String> textScore = {
    3: "You are a Jolly person :) ",
    15: "You are an average person :|",
    30: "Umm...what is wrong with you ?"
  };
  var _index = 0;
  int finalScore = 0;

  void _resetQuiz() {
    setState(() {
      _index = 0;
      finalScore = 0;
    });
  }

  //function which changes our state
  void _answerQuestion(String answerText) {
    finalScore += _questionAnswers.values.elementAt(_index)[answerText];

    setState(() =>
        {_index++}); //Change of state, needs to be done in "setState()" method
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Page of our app with basic design
      home: Scaffold(
        appBar: AppBar(title: Text("First App")),
        //If we want to show data vertically
        //Here we are using ternary operator to display a widget conditionally
        body: _index < _questionAnswers.length
            ? Quiz(
                questionAnswers: _questionAnswers,
                index: _index,
                answerQuestion: _answerQuestion,
              )
            : Result(
                finalScore: finalScore,
                textScore: textScore[finalScore],
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
