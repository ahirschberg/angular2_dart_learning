import 'package:angular2/core.dart';
import 'dart:math';

import 'package:angular2_getting_started/heroes/hero.dart';
import 'package:angular2_getting_started/heroes/hero_service.dart';

List<String> _powers = const [
  "Super smart",
  "Super attractive",
  "Super strong"
];

@Component(
    selector: 'hero-form',
    templateUrl: 'hero_form_component.html'
)
class HeroFormComponent {
  HeroService heroService;
  final submitRequest = new EventEmitter<Hero>();

  HeroFormComponent(this.heroService);

  List<String> get powers => _powers;
  Hero model = new Hero(18, 'Dr IQ', _powers[1], 'Chuck Overstreet');

  void onSubmit() {
    submitRequest.emit(model); // doesn't work???
    heroService.addHero(model);
    print('submitting!');
    model = new Hero(new Random().nextInt(100), '', '');
  }
}