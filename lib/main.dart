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
    return MyAppState();
  }
}

//Create a new class for the changing instance members and our code shifts here
class MyAppState extends State<MyApp> {
  var questions = ["Your fav color ?", "Your fav movie ?"];
  var index = 0;

  //function which changes our state
  void answerQuestion() {
    setState(() =>
        {index++}); //Change of state, needs to be done in "setState()" method
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
            Text(questions[index]),
            RaisedButton(child: Text("Green"), onPressed: answerQuestion),
            RaisedButton(child: Text("Blue"), onPressed: answerQuestion),
            RaisedButton(child: Text("Red"), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
