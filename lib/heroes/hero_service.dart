import 'hero.dart';
import 'package:angular2/core.dart';
import '../logger_service.dart';

@Injectable()
class HeroService {
  List<Hero> _heroes = [
    new Hero("Fast Man", "Going fast", "Bill", true),
    new Hero("Strong Man", "Very Strong", "Joe", true),
    new Hero("Hard To See Man", "Transparent", "Dave", true),
    new Hero("Underwater man", "Good at being underwater", "Cody", true),
    new Hero("Average Man", "Your Average Man", "John", false)
  ];

  final Logger _logger;
  bool isAuthorized;

  HeroService(this._logger, this.isAuthorized);

  List<Hero> getHeroes() {
    return _heroes;
  }

  Hero getHero(int id) =>
    getHeroes().firstWhere((Hero h) => h.id == id);


  void addHero(Hero hero) {
    _logger.log('${_authStatus()} user adding $hero');
    _heroes.add(hero);
  }

  String _authStatus() => isAuthorized
        ? 'authorized'
        : 'unauthorized';
}
