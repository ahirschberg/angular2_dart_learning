import 'package:angular2_getting_started/heroes/hero.dart';
import 'package:angular2/core.dart';
import '../logger_service.dart';

@Injectable()
class HeroService {
  List<Hero> _heroes = [
    new Hero(10, "Fratberg", "being frat", "Alex", true),
    new Hero(5, "Cpt. America", "shield", "Donald Trump", false)
  ];

  final Logger _logger;
  final bool _isAuthorized;

  HeroService(this._logger, this._isAuthorized);

  List<Hero> getHeroes() {
    _logger.log('Getting heroes for ${_authStatus()} user...');
    return _heroes.where((hero) => _isAuthorized || !hero.isSecret).toList();
  }

  void addHero(Hero hero) {
    _logger.log('${_authStatus()} user adding $hero');
    _heroes.add(hero);
    _logger.log('List is now $_heroes');
  }

  String _authStatus() => _isAuthorized
        ? 'authorized'
        : 'unauthorized';
}
