import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';

///
/// HomePageSceen is Used To call HomePage
///

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.whiteBg,
        child: Text(
          "About Us",
          style: Fonts.gRubik(
            48,
            MyColor.black,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
