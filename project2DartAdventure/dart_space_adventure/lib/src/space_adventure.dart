import 'dart:io';
import 'planetary_system.dart';


class SpaceAdventure {

  final PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start()
  {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    print('Let\'s go on an adventure!');
    travel(
      promptForRandomOrSpecificDestination(
        'Shall I randomly choose a planet for you to visit? (Y or N)'
      )
    );
  }

  void printGreeting() {
      print('Welcome to the ${planetarySystem.name}');
      print('There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }

  void printIntroduction(String name) {
      print('Nice to meet you $name.');
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  void travelToRandomPlanet(){
    print(
          'Okay! You are traveling to Mercury.'
        );
  }

  void travelTo(String planetName) {
    print(
      'Traveling to $planetName...\n'
      'Arrive at $planetName.'
    );
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomPlanet();
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit'));  
    }
  }

  bool promptForRandomOrSpecificDestination(String prompt){
    String answer; 
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt('Shall I randomly choose a planet for you to visit? (Y or N)');
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;     
      } else {
        print('Sorry I didn\'t get that.');
      }
    }
    return false;
  }

}
