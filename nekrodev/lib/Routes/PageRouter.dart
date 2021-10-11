import 'package:flutter/material.dart';
import 'package:nekrodev/Screens/AboutUsScreen.dart';
import 'package:nekrodev/Screens/PricingScreen.dart';
import 'package:nekrodev/Screens/HomeScreen.dart';

import 'PageRoutesName.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesNames.Home:
        return _GeneratePageRoute(
            widget: HomePageScreen(), routeName: settings.name);
      case PageRoutesNames.Pricing:
        return _GeneratePageRoute(
            widget: PricingScreen(), routeName: settings.name);
      case PageRoutesNames.AboutUs:
        return _GeneratePageRoute(
            widget: AboutUsScreen(), routeName: settings.name);
      default:
        return _GeneratePageRoute(
            widget: HomePageScreen(), routeName: settings.name);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String? routeName;
  _GeneratePageRoute({required this.widget, this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
