import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback answerFunction;

  const Answer(this.answerText, this.answerFunction, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        child: Text(answerText),
        onPressed: answerFunction,
      ),
    );
  }
}
