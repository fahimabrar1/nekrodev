import 'package:flutter/material.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';

/// Responsive Classes Takes Widgets For Different Screen Sized Devices.
/// As The Sizes Changes It Returns Different Widgets.
/// We can Also Check If the size is for desktop,tablet or mobile.

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget laptop;
  final voidMethod? onChangeSize;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.laptop,
    this.onChangeSize,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 425;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width > 425;
  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1230 &&
      MediaQuery.of(context).size.width >= 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1230;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (Responsive.isMobile(context)) {
      return mobile;
    } else if (Responsive.isTablet(context)) {
      return tablet;
    } else if (Responsive.isLaptop(context)) {
      return laptop;
    } else {
      return desktop;
      //return Container(width: 1200, child: mobile);
    }
  }
}
