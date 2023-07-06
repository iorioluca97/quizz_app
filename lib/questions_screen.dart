import 'package:flutter/material.dart';
import 'customs/answer_button_styled.dart';
import 'customs/question_text_styled.dart';
import 'models/questions_data.dart';
import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else if (currentQuestionIndex == questions.length) {
        currentQuestionIndex = 0;
      }
      log("currentQuestionIndex: $currentQuestionIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(30),
      width: double.infinity, // use as much width as you can
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuestionTextStyled(text: currentQuestion.text),
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
                  onTap: () {
                    nextQuestion();
                  });
            },
          )
        ],
      ),
    );
  }
}
