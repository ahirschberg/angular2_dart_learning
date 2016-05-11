import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'hero.dart';
import 'hero_service.dart';

@Pipe(
    name: 'auth_filter',
    pure: true
)
class AuthFilterPipe implements PipeTransform {

  transform(List<Hero> items, bool isAuthenticated) {
    return items.where((item) => isAuthenticated || !item.isSecret);
  }
}

@Component(
    selector: 'hero-list',
    templateUrl: 'hero_list_component.html',
//    changeDetection: ChangeDetectionStrategy.CheckOnce, // uncommenting this causes the list to not update!
    styles: const ['''
      :host {
        display: block;
      }
      ul:not(.auth) {
        background-color: #E6E6E6;
      }
      ul.auth {
        background-color: lightgreen;
        border-radius: 2px;
      }
      li {
        padding: 10px;
      }
      li:last-child::after {
        content: " ";
        display: block;
        clear: both;
      }
    '''],
    pipes: const [AuthFilterPipe])
class HeroListComponent {
  HeroService heroService;
  Router _router;
  List<Hero> heroes;
  @Output() final EventEmitter<Hero> deleteHero = new EventEmitter<Hero>();
  HeroListComponent(this.heroService, Router this._router) {
    heroes = heroService.getHeroes();
  }

  gotoDetail(Hero h) =>
    _router.navigate(['Detail', {'id': h.id.toString()}]);
}
