import 'package:first/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

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
  /* var _questionAnswers = [
    {
      "Your fav color ?": ["Black", "Blue", "Green"]
    },
    {
      "Your fav movie ?": ["Godfather", "Interstellar", "Hulchul"]
    },
    {
      "Your fav programming language": ["Java", "JavaScript", "C++"]
    }
  ]; */

  var _questionAnswers = {
    "Your fav color ?": ["Black", "Blue", "Green"],
    "Your fav movie ?": ["Godfather", "Interstellar", "Hulchul"],
    "Your fav programming language": ["Java", "JavaScript", "C++"]
  };

  var _index = 0;

  //function which changes our state
  void _answerQuestion() {
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
        body: Column(
          children: [
            //Question is our custom widget, whose constructor take String
            Question(_questionAnswers.keys.elementAt(_index)),
            ...(_questionAnswers.values.elementAt(_index))
                .toList()
                .map((e) => Answer(_answerQuestion, e))
          ],
        ),
      ),
    );
  }
}
