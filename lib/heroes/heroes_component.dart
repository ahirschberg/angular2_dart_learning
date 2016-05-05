import 'package:angular2/core.dart';

import 'hero_service_provider.dart';
import 'hero_form_component.dart';
import 'hero_list_component.dart';

@Component(
    selector: 'my-heroes',
    template: '''
    <h1>Heroes</h1>
    <hero-form (submitRequest)="log(\$event)"></hero-form>
    <hero-list></hero-list>
    ''',
    styleUrls: const ['my_heroes.css'],
    providers: const [heroServiceProvider],
    directives: const [HeroFormComponent, HeroListComponent])
class HeroesComponent {
  void log(String msg) => print(msg); // never called???
}
