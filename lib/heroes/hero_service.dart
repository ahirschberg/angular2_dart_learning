import 'package:angular2_getting_started/heroes/hero.dart';
import 'package:angular2/core.dart';
import '../logger_service.dart';

@Injectable()
class HeroService {
  List<Hero> _heroes = [new Hero(10, "Fratberg", "being frat", "Alex")];
  final Logger _logger;
  HeroService(this._logger);
  List<Hero> getHeroes() {
    print('Getting heroes...');
    return _heroes;
  }
}
