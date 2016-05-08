import 'package:angular2/core.dart';

import 'hero_service.dart';
import 'hero_form_component.dart';
import 'hero_list_component.dart';
import 'hero.dart';


@Component(
    selector: 'my-heroes',
    template: '''
    <h1>Heroes</h1>
    <button (click)="heroService.isAuthorized = !heroService.isAuthorized">
      Authorized: {{heroService.isAuthorized}}
    </button>
    <hero-form (submitRequest)="addHero(\$event)"></hero-form>
    <hero-list (deleteHero)="deleteHero(\$event)"></hero-list>
    ''',
    styleUrls: const ['my_heroes.css'],
    directives: const [HeroFormComponent, HeroListComponent])
class HeroesComponent {
  HeroService heroService;

  HeroesComponent(this.heroService);

  bool deleteHero(Hero h) => heroService.getHeroes().remove(h);
  void addHero(Hero h) => heroService.addHero(h);

}
