import 'package:flutter/material.dart';

class QuestionsModel {
  const QuestionsModel(this.text, this.answer);

  final String text;
  final List<String> answer;

/* 
Dato che shuffle modifica anche i valori in memoria
e quindi le nostre risposte salvate, serve creare una copia 
della lista e quest'ultima venga randomizzata e proposta
all'utente mentre in memoria rimane salvata la lista 
che ha sempre la prima risposta corretta e le altre errate.
Creando questo metodo si può utilizzarlo in questions_screen.
*/
  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();

    return shuffledList;
  }
}
