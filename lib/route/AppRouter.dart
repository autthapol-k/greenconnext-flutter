import 'package:auto_route/auto_route.dart';
import 'package:greenconnext_app/route/AppRouter.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: ClassGroupRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        )
      ];
}
