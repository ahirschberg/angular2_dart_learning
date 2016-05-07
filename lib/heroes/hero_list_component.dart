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
//    changeDetection: ChangeDetectionStrategy.CheckOnce, // uncommenting this causes the list to not update!
    styles: const ['''
      :host {
        display: block;
      }
      ul:not(.auth) {
        background-color: #FFC1C1;
      }
      ul.auth {
        background-color: lightgreen;
        border-radius: 2px;
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
