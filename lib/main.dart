import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: StartScreen(),
        ),
        debugShowCheckedModeBanner: false),
  );
}
