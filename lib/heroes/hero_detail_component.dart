import 'package:angular2/core.dart';
import 'hero.dart';
import 'hero_service.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'hero-detail',
    template: '''
    <div *ngIf="hero != null">
      <h2>{{hero.name}} details</h2>
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

  ngOnInit() async {
    var id = int.parse(_routeParams.get('id'));
    hero = _heroService.getHero(id);
  }
}