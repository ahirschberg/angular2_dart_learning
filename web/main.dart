import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart' show LocationStrategy, HashLocationStrategy, APP_BASE_HREF;
import 'package:angular2/router.dart' show ROUTER_PROVIDERS;
import 'package:angular2/core.dart' show provide;

import 'package:angular2_getting_started/app_component.dart';

main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    provide(LocationStrategy, useClass: HashLocationStrategy),
    provide(APP_BASE_HREF, useValue: '/')
  ]);
}