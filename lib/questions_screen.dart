import 'package:flutter/material.dart';
import 'customs/AnswersButtonStyled.dart';
import 'models/questions_data.dart';
import 'dart:developer';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Container(
      margin: const EdgeInsets.all(30),
      width: double.infinity, // use as much width as you can
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(currentQuestion.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )),
          ),
          const SizedBox(height: 30),
          /* dato che si verrebbe a creare una lista (quella di column)
          che all'interno conterrebbe un'altra lista (quella di map)
          si utilizzano i 3 punti (...) che permettono 
          di aggiungere gli elementi della seconda lista, 
          quella nested per intenderci, nella prima
          come una sorta di append alla prima lista. */
          ...currentQuestion.getShuffledAnswer().map(
            (answer) {
              return AnswersButtonStyled(
                answerText: answer,
                onTap: () {},
              );
            },
          )
        ],
      ),
    );
  }
}
