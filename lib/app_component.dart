import 'package:angular2/core.dart';
import 'logger_service.dart';
import 'heroes/hero_component.dart';

@Component(
    selector: 'my-app',
    template: '<my-heroes></my-heroes>',
    providers: const [Logger],
    directives: const [HeroesComponent]
)
class AppComponent {}