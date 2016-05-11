import 'package:angular2/core.dart';
import 'hero.dart';
import 'hero_service.dart';
import 'package:angular2/router.dart';
import 'dart:html';

@Component(
    selector: 'hero-detail',
    template: '''
    <div *ngIf="hero != null">
      <a href="" (click)="goBack()">Back</a>
      <h2>{{hero.name}} details</h2>
      <p>{{hero.name}} is so heroic and brave! They astound the world with their power: {{hero.power}}.</p>
    </div>
    '''
)
class HeroDetailComponent implements OnInit{
  HeroService _heroService;
  RouteParams _routeParams;
  Hero hero;
  HeroDetailComponent(HeroService heroService, this._routeParams) {
    this._heroService = heroService;
  }

  ngOnInit() {
    var id = int.parse(_routeParams.get('id'));
    hero = _heroService.getHero(id);
  }

  goBack() => window.history.back();
}