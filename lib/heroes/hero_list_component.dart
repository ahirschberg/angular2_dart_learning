import 'package:angular2/core.dart';

import 'hero.dart';
import 'hero_service.dart';

@Component(
    selector: 'hero-list',
    template: '''
    <h3>{{heroes.length}} Hero{{heroes.length != 1 ? 'es' : ''}} to save the day!</h3>
    <ul [class.auth]="auth">
        <li *ngFor="let h of heroes">{{h}}</li>
    </ul>
    ''',
    styles: const ['''
      :host {
      display: block;
      }
      .auth {
        background-color: lightgreen;
      }
    '''])
class HeroListComponent {
  List<Hero> heroes;
  bool auth;
  HeroListComponent(HeroService heroService) {
    heroes = heroService.getHeroes();
    auth = heroService.isAuthorized;
  }
}
