import 'package:auto_route/auto_route.dart';
import 'app_route.gr.dart';
//part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Route404.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: HomeBikerRoute.page),
        AutoRoute(page: HomeCustomerRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: TextFormFieldRoute.page),
        AutoRoute(page: PruebasAuth.page),
      ];
}
