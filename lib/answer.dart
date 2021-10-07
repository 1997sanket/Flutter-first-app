import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function functionReference;
  final String answerText;

  Answer(this.functionReference, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: () => {functionReference(answerText)},
        color: Colors.blue,
      ),
    );
  }
}
