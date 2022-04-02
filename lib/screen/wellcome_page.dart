// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/screen/home_page.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Quiz.png",
                height: 300,
              ),
              Text(
                "Lets check your programming knowladge!!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 18,
                  letterSpacing: 2,
                  wordSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red, width: 2)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.red,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
