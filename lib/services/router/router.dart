import 'package:auto_route/auto_route.dart';
import 'router.gr.dart';
export 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: VerificationRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: PostAdRoute.page),
        AutoRoute(page: TripRoute.page),
        AutoRoute(page: SearchRoute.page),
      ];
}

AppRouter router = AppRouter();
