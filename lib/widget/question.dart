// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                Icons.adjust_sharp,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 10,
              child: Text(
                questionText,
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.visible,
                    fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ));
  }
}
