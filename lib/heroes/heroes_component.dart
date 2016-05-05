import 'package:angular2/core.dart';

import 'hero_service_provider.dart';
import 'hero_form_component.dart';
import 'hero_list_component.dart';
import 'hero.dart';

@Component(
    selector: 'my-heroes',
    template: '''
    <h2>Heroes</h2>
    <hero-form></hero-form>
    <hero-list></hero-list>
    ''',
    styleUrls: const ['my_heroes.css'],
    providers: const [heroServiceProvider],
    directives: const [HeroFormComponent, HeroListComponent])
class HeroesComponent {}
