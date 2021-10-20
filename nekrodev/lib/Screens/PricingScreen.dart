import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Pages/PricingPage.dart';

///
/// HomePageSceen is Used To call HomePage
///

class PricingScreen extends StatelessWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PriccingPage(),
    );
  }
}
