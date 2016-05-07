import 'package:angular2/core.dart';
import 'logger_service.dart';
import 'heroes/heroes_component.dart';

@Component(
    selector: 'my-app',
    template: '<my-heroes></my-heroes>',
//    encapsulation: ViewEncapsulation.Native, // uncomment for native shadow dom on chrome!
    providers: const [Logger],
    directives: const [HeroesComponent]
)
class AppComponent {}