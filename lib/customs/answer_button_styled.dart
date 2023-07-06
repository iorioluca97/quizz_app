import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersButtonStyled extends StatelessWidget {
  AnswersButtonStyled({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          onTap();
          log('Answer: $answerText');
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
            primary: Colors.deepPurpleAccent,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          answerText,
          style: GoogleFonts.kreon(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
