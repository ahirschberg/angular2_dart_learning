import 'package:angular2/core.dart';
import '../logger_service.dart';
import 'hero_service.dart';

const _isAuthorized = true;

@Injectable()
heroServiceFactory(Logger logger) =>
    new HeroService(logger, _isAuthorized);

const heroServiceProvider = const Provider(HeroService,
    useFactory: heroServiceFactory,
    deps: const [Logger]
);
