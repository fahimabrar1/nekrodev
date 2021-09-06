import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Pages/HomePage.dart';

///
/// HomePageSceen is Used To call HomePage
///

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.bgBlueish,
        child: HomePage(),
      ),
    );
  }
}
