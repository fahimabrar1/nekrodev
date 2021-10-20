// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:nekrodev/Routes/PageRoutesName.dart';
import 'package:nekrodev/Screens/AboutUsScreen.dart';
import 'package:nekrodev/Screens/HomeScreen.dart';
import 'package:nekrodev/Screens/PricingScreen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: PageRoutesNames.Home, page: HomePageScreen, initial: true),
    AutoRoute(path: PageRoutesNames.AboutUs, page: AboutUsScreen),
    AutoRoute(path: PageRoutesNames.Pricing, page: PricingScreen),
  ],
)
class $AppRouter {}
