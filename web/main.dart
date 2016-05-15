import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart' show ROUTER_PROVIDERS;
import 'package:angular2/core.dart' show provide;

import 'package:angular2_dart_my_heroes_experimentation/app_component.dart';
import 'dart:html' show window;

main() {
  // allow user to request path location strategy (currently for debug)
  var strategy;
  if (window.localStorage['location_strategy'] == 'path') {
    print('using path location strategy based on user preference.');
    strategy = PathLocationStrategy;
  } else {
    strategy = HashLocationStrategy;
  }

  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: strategy),
    provide(APP_BASE_HREF, useValue: '/')
  ]);
}