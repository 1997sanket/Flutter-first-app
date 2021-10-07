import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final String textScore;
  Function resetQuiz;

  Result({this.finalScore, this.textScore, this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            textScore,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetQuiz,
              child: Text("Take the quiz again"),
              color: Colors.blue)
        ],
      ),
    );
  }
}
