import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  Widget? activeScreen;

/*
initState permette di dare istruzioni extra
 quando viene inizializzato il widget _QuizzState
 */
  @override
  void initState() {
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  changeScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 5, 231, 122),
                  Color.fromARGB(255, 4, 145, 77),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen,
          ),
        ),
        debugShowCheckedModeBanner: true);
  }
}
