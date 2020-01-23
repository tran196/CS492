import 'dart:io';
import 'dart:math';
import 'planetary_system.dart';
import 'planet.dart';

class SpaceAdventure {

  final PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start()
  {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    print('Let\'s go on an adventure!');
    if (planetarySystem.hasPlanets) {
      travel(
        promptForRandomOrSpecificDestination(
          'Shall I randomly choose a planet for you to visit? (Y or N)'
        )
      );
    } else {
      print('Aw, there are no planets to explore.');
    }
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

  void travelToRandomDestination(){
    if (!planetarySystem.hasPlanets) return;
    final index = Random().nextInt(planetarySystem.numberOfPlanets);
    travelTo(planetarySystem.planets[index].name);
  }

  void travelToPlanet(Planet planet)
  {
    print('Traveling to ${planet.name}');
    print('Arrived at ${planet.name}');
  }

  void travelTo(String destination) {
    print('Traveling to $destination...');
    planetarySystem.planets.forEach( (planet) {
      if (planet.name == destination) {
        print('Arrive at ${planet.name}. ${planet.description}');
      }
    } );

  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomDestination();
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
