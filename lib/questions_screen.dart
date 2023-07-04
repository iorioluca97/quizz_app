import 'package:flutter/material.dart';
import 'customs/AnswersButtonStyled.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // use as much width as you can
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Question number #", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          Text("Question text", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          AnswersButtonStyled(answerText: "Answer #1", onTap: () {}),
          AnswersButtonStyled(answerText: "Answer #2", onTap: () {}),
          AnswersButtonStyled(answerText: "Answer #3", onTap: () {}),
          AnswersButtonStyled(answerText: "Answer #4", onTap: () {}),
        ],
      ),
    );
  }
}
