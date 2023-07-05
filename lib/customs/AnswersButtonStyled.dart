import 'dart:developer';
import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: () {
        onTap;
        log('item picked: $answerText');
      },
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          primary: Colors.deepPurpleAccent,
          onPrimary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(answerText),
    );
  }
}
