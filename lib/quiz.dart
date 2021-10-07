import 'package:first/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  Map<String, Map<String, int>> questionAnswers;
  final Function answerQuestion;
  var index;

  // List<String> options =
  //     this.questionAnswers.values.

  Quiz({this.questionAnswers, this.index, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Question is our custom widget, whose constructor take String
        Question(questionAnswers.keys.elementAt(index)),
        /* Since we are getting list of Answer widgets, 
            "..." is used to separate them and show on the screen 
             as children of Column widget */
        ...(questionAnswers.values.elementAt(index))
            .keys
            .toList()
            .map((e) => Answer(answerQuestion, e))
      ],
    );
  }
}
