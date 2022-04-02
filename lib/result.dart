
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

class Result extends StatelessWidget {

  final int totalScore;

   Result(this.totalScore);
 
  String get resultPhrase{
    String resultText;

      if(totalScore >=80){
          resultText = "Cogratulations .. \nYour Knowlage is high\n Your Score ${totalScore}";
      }
      else if(totalScore>=50){
        resultText = "Congratulation .. \nYour Knowlage is mid label \n Your Score ${totalScore}";
      }
      else{
        resultText = "Bad Luck!! .. \nYour Knowlage is mid label \n Your Score ${totalScore}";
      }

    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(resultPhrase, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, letterSpacing: 1, wordSpacing: 1, fontSize: 18),textAlign: TextAlign.center,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.green,
                      
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }, child: Text("Test Again")),
                  )
                ],),

                
              );
  }
}