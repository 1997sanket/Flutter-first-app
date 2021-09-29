import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("First App")),
        body: Column(
          children: [
            Text("Your fav color ?"),
            RaisedButton(child: Text("Green"), onPressed: answerQuestion),
            RaisedButton(child: Text("Blue"), onPressed: answerQuestion),
            RaisedButton(child: Text("Red"), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
