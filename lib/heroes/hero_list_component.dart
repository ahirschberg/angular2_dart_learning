import 'package:angular2/core.dart';

import 'package:angular2_getting_started/heroes/hero.dart';
import 'package:angular2_getting_started/heroes/hero_service.dart';

@Component(
    selector: 'hero-list',
    template: '''
    <h3>List</h3>
    <ul>
        <li *ngFor="let h of heroes">{{h}}</li>
    </ul>
    {{heroes}}
    ''')
class HeroListComponent {
    List<Hero> heroes;

    HeroListComponent(HeroService heroService)
        : heroes = heroService.getHeroes();
}