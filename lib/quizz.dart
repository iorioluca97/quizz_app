import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quizz_app/models/questions_data.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';
import 'models/questions_data.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  /*
   uso final perchè non riassegnerò a questa lista nuovi
   ma li appenderò ad essa
  */
  final List<String> selectedAnswer = [];
  var activeScreen = "start-screen";

/*
initState permette di dare istruzioni extra
 quando viene inizializzato 
 il widget _QuizzState
  @override
  void initState() {
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }
 */
  changeScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer.clear();
        activeScreen = "start-screen";
        log(activeScreen);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // changing the screen with if statement
    var screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreenFunction: changeScreen)
        : QuestionsScreen(onSelectAnswer: chooseAnswer);

    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 13, 255, 138),
                  Color.fromARGB(255, 3, 118, 63),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget,
          ),
        ),
        debugShowCheckedModeBanner: true);
  }
}
