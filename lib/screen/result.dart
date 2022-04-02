// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
 

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuize;

  Result(this.totalScore, this.resetQuize);

  String get resultPhrase {
    String resultText;

    if (totalScore >= 80) {
      resultText =
          "Cogratulations!! .. \nYour Knowlage is high\n Your Score ${totalScore}";
    } else if (totalScore >= 50) {
      resultText =
          "Congratulation!! .. \nYour Knowlage is mid label \n Your Score ${totalScore}";
    } else {
      resultText =
          "Bad Luck!! .. \nYour Knowlage is very low \n Your Score ${totalScore}";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 1,
                fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlineButton(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                    style: BorderStyle.solid
                  ),
                  
                onPressed: () {resetQuize();},
                child: Text("Test Again", style: TextStyle(color: Colors.green, letterSpacing: 1),)),
          )
        ],
      ),
    );
  }
}
