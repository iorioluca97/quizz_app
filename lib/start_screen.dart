import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreenFunction, {super.key});

  final void Function() switchScreenFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          Text(
            'Quizz App',
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Opacity(
            opacity: .6,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 240,
              height: 240,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Let's test your knowledge!",
            style: GoogleFonts.kreon(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            onPressed: () {
              switchScreenFunction();
              log('switchScreenFunction()');
            },
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            icon: const Icon(Icons.arrow_right_alt, size: 35),
            label: Text(
              "Start!",
              style: GoogleFonts.kreon(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
