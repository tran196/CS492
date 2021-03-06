import 'dart:io';
import 'dart:convert';
import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  String filename = arguments[0];
//
  File(filename).readAsString().then((String json) {
      SpaceAdventure(
        planetarySystem: PlanetarySystem.fromMap(jsonDecode(json))
      ).start();
  });
//

}


// List<Planet> mockPlanets() {

//   return planetData.entries.map( 
//     (entry) => Planet(name: entry.key, description: entry.value))
//     .toList();

//   // return [
//   //   Planet(
//   //     name: "Mercury",
//   //     description: "A very hot planet, closest to the sun."
//   //   ),
//   //   Planet(
//   //     name: "Venus",
//   //     description: "It's very cloudy here!"
//   //   ),
//   //   Planet(
//   //     name: "Earth",
//   //     description: "There is something very familiar about this planet."
//   //   ),
//   //   Planet(
//   //     name: "Mars",
//   //     description: "Known as the red planet."
//   //   ),
//   //   Planet(
//   //     name: "Jupiter",
//   //     description: "A gas giant, with a noticeable red spot."
//   //   ),
//   //   Planet(
//   //     name: "Saturn",
//   //     description: "This planet has beautiful rings around it."
//   //   ),
//   //   Planet(
//   //     name: "Uranus",
//   //     description: "Strangely, this planet rotates around on its side."
//   //   ),
//   //   Planet(
//   //     name: "Neptune",
//   //     description: "A very cold planet, furthest from the sun."
//   //   ),
//   //   Planet(
//   //     name: "Pluto",
//   //     description: "I don't care what they say - it's a planet."
//   //   )
//   // ];
// }