// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../Screens/AboutUsScreen.dart' as _i2;
import '../Screens/HomeScreen.dart' as _i1;
import '../Screens/PricingScreen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRouteScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePageScreen());
    },
    AboutUsScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AboutUsScreen());
    },
    PricingScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PricingScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRouteScreen.name, path: '/'),
        _i4.RouteConfig(AboutUsScreen.name, path: '/about'),
        _i4.RouteConfig(PricingScreen.name, path: '/pricing')
      ];
}

/// generated route for [_i1.HomePageScreen]
class HomeRouteScreen extends _i4.PageRouteInfo<void> {
  const HomeRouteScreen() : super(name, path: '/');

  static const String name = 'HomeRouteScreen';
}

/// generated route for [_i2.AboutUsScreen]
class AboutUsScreen extends _i4.PageRouteInfo<void> {
  const AboutUsScreen() : super(name, path: '/about');

  static const String name = 'AboutUsScreen';
}

/// generated route for [_i3.PricingScreen]
class PricingScreen extends _i4.PageRouteInfo<void> {
  const PricingScreen() : super(name, path: '/pricing');

  static const String name = 'PricingScreen';
}
