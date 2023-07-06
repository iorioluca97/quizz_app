import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionTextStyled extends StatelessWidget {
  const QuestionTextStyled({required this.text, super.key});
  final String text; //currentQuestion.text,

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.kreon(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
