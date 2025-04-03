import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'routes.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DrawRoute.page,
          path: Routes.draw,
          initial: true,
        ),
        CustomRoute(
          page: ResultRoute.page,
          path: Routes.result,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
        ),
      ];
}
