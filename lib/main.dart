import 'package:first/question.dart';
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
  var _questions = ["Your fav color ?", "Your fav movie ?"];
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
            Question(_questions[_index]),
            RaisedButton(child: Text("Green"), onPressed: _answerQuestion),
            RaisedButton(child: Text("Blue"), onPressed: _answerQuestion),
            RaisedButton(child: Text("Red"), onPressed: _answerQuestion)
          ],
        ),
      ),
    );
  }
}
