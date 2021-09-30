import 'package:flutter/cupertino.dart';

//Custom widget, so as to play with Text widget
class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    //Container is a layout widget
    return Container(
      /* Text take full width of Container and Container takes full width of 
      device, so everything is centered */
      width: double.infinity,
      margin: EdgeInsets.all(10), //Adding margin of 10px to our container
      child: Text(
        question,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center, //Not enough to align in center
      ),
    );
  }
}
