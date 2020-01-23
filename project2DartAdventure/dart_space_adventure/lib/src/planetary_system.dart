import 'dart:math';
import 'planet.dart';

class PlanetarySystem {

  final Random _random = Random();
  final String name;
  final List<Planet> planets;

  // PlanetarySystem() : name = 'Unnamed System';
  // PlanetarySystem.withName(this.name);

  PlanetarySystem({this.name = 'Unnamed System', this.planets = const[] }); // brackets [] make parameter optional; braces {} lets you do "named" parameters

  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;
  
  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  }


  Planet planetWithName(String name) {
    return planets.firstWhere( 
      (planet) => planet.name == name, 
      orElse: () => Planet.nullPlanet()
    );
  }


}

  var ps = PlanetarySystem();
  var dagobah = PlanetarySystem(name:'Dagobah System');