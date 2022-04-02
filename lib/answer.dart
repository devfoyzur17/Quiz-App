// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green,width: 1.5)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(children: [
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Icon(
                  Icons.add_circle_outlined,
                  color: Colors.green,
                ),
              ),
              Text(
                answerText,
                style: TextStyle(color: Colors.green),
              )
            ]),
          ),
          onPressed: selectHandler,
        ));
  }
}
