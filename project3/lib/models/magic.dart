
import 'dart:math';

class Magic {
  var possible_outcomes = [
    "Unlikely but possible", 
    "Maybe Indeed",
    "Definitely",
    "The Future is uncertain", 
    "Try again later", 
    "You do not want to know the answer",
    "Ask your mom",
    "Shake Again"
  ];

  var random = Random().nextInt(9);
  String outcome = possible_outcomes.toString();

  Magic();

  void generateOutcome() {

  }
}
