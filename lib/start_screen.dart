import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

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
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            height: 200,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Let's test your knowledge!",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text(
              "Start",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          )
        ],
      ),
    );
  }
}
