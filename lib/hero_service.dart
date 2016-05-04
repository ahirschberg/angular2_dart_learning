import 'hero.dart';
import 'package:angular2/core.dart';

class HeroService {
  List<Hero> _heroes;
  HeroService() : _heroes = [new Hero(10, "Fratberg", "being frat", "Alex")];
  List<Hero> getHeroes() => _heroes;
}
