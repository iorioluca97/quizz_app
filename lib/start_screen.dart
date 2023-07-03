import 'package:flutter/material.dart';
import 'quizz.dart';

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
          const Text(
            'Quizz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
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
            height: 40,
          ),
          const Text(
            "Let's test your knowledge!",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            onPressed: () {
              switchScreenFunction();
            },
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            icon: const Icon(Icons.arrow_right_alt, size: 35),
            label: const Text(
              "Start!",
              style: TextStyle(
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
