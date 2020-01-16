import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<Planet> planets;

  // PlanetarySystem() : name = 'Unnamed System';
  // PlanetarySystem.withName(this.name);

  PlanetarySystem({this.name = 'Unnamed System', this.planets = const[] }); // brackets [] make parameter optional; braces {} lets you do "named" parameters

  int get numberOfPlanets => planets.length;
  

}

  var ps = PlanetarySystem();
  var dagobah = PlanetarySystem(name:'Dagobah System');