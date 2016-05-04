import 'package:angular2/core.dart';

import 'package:angular2_getting_started/heroes/hero_service_provider.dart';
import 'package:angular2_getting_started/heroes/hero_form_component.dart';
import 'package:angular2_getting_started/heroes/hero_list_component.dart';

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
