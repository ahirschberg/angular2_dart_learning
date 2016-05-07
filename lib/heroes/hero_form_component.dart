import 'package:angular2/core.dart';
import 'dart:math';

import 'package:angular2_getting_started/heroes/hero.dart';

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
  @Output() final EventEmitter<Hero> submitRequest = new EventEmitter<Hero>();

  List<String> get powers => _powers;
  Hero model = new Hero(18, 'Dr IQ', _powers[1], 'Chuck Overstreet');

  void onSubmit() {
    submitRequest.emit(model);
    model = new Hero(new Random().nextInt(100), '', '');
  }
}