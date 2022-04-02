// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var questionIndex = 0;
  var _totalScore = 0;

  var question = [
    {
      "questionText": "What is the only thing that computers understand?",
      "answer": [
        {"name": "Machine Code", "score": 10},
        {"name": "High Level Languages", "score": 0},
        {"name": "Low Level Languages", "score": 0},
        {"name": "Algorithms", "score": 0}
      ]
    },
    {
      "questionText": "Which of the following is not a high level programming language?",
      "answer": [
       
        {"name": "Java", "score": 0},
        {"name": "C++", "score": 0},
         {"name": "Assembly", "score": 10},
        {"name": "Python", "score": 0}
      ]
    },
    {
      "questionText": "What is the name for the software used to convert an assembly language program into machine code?",
      "answer": [
        {"name": "Compiler", "score": 0},
        {"name": "Assembler", "score": 10},
        {"name": "Interpreter", "score": 0},
        {"name": "Translator", "score": 0}
      ]
    },
     {
      "questionText": "Which is NOT a high-level language?",
      "answer": [
        {"name": "Java", "score": 0},
        {"name": "C++", "score": 0},
        {"name": "Python", "score": 0},
        {"name": "Machine Code", "score": 10}
      ]
    },
    {
      "questionText": "What is programming?",
      "answer": [
        {"name": "Commands given to an animal", "score": 0},
        {"name": "commands given to a computer", "score": 10},
        {"name": "something on television", "score": 0},
        {"name": "something on a radio", "score": 0}
      ]
    },

     {
      "questionText": "If you are wanting to add interactivity to a website, which language would you use?",
      "answer": [
        {"name": "JavaScript", "score": 10},
        {"name": "C++", "score": 0},
        {"name": "Java", "score": 0},
        {"name": "Python", "score": 0}
      ]
    },

     {
      "questionText": "Alex is a scientist at NASA. Which programming language is he most likely to use?",
      "answer": [
        {"name": "Fortran", "score": 0},
        {"name": "C++", "score": 0},
        {"name": "Java", "score": 0},
        {"name": "Python", "score": 10}
      ]
    },

    {
      "questionText": "Which character always ends a statement?",
      "answer": [
        {"name": " ,", "score": 0},
        {"name": " .", "score": 0},
        {"name": " ;", "score": 10},
        {"name": " }", "score": 0}
      ]
    },
    {
      "questionText": "How to write a comment on a single line?",
      "answer": [
        {"name": "/* my comment", "score": 0},
        {"name": "// my comment", "score": 10},
        {"name": "{my comment", "score": 0},
        {"name": " ** my comment", "score": 0}
      ]
    },

     {
      "questionText": "What is the name of the main function of a C program?",
      "answer": [
        {"name": "principal", "score": 0},
        {"name": "main", "score": 10},
        {"name": "any name", "score": 0},
        {"name": "begin", "score": 0}
      ]
    },
  ];

  void anwerQuestion(int score) {
    setState(() {
      _totalScore += score;
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: questionIndex < question.length
            ? Quiz(
                question: question,
                anwerQuestion: anwerQuestion,
                questionIndex: questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
