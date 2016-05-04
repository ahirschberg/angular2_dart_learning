import 'package:angular2/core.dart';

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
  List<String> get powers => _powers;
  bool submitted = false;
  Hero model = new Hero(18, 'Dr IQ', _powers[1], 'Chuck Overstreet');
  String get diagnostic => 'DIAGNOSTIC: $model'; // TODO remove

  onSubmit() {
    submitted = true;
  }
}