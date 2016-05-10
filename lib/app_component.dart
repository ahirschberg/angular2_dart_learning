import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'logger_service.dart';
import 'heroes/heroes_component.dart';
import 'package:angular2_getting_started/heroes/hero_service_provider.dart';

@RouteConfig(const [
  const Route(
    path: '/heroes/',
    component: HeroesComponent,
    useAsDefault: true
  )
])

@Component(
    selector: 'my-app',
    template: '<router-outlet></router-outlet>',
//    encapsulation: ViewEncapsulation.Native, // uncomment for native shadow dom on chrome!
    providers: const [Logger, heroServiceProvider],
    directives: const [HeroesComponent, ROUTER_DIRECTIVES]
)
class AppComponent {}