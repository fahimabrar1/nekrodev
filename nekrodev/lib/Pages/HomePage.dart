import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Footer/Footer.dart';
import 'package:nekrodev/Components/Panels/AdvancedInnovation.dart';
import 'package:nekrodev/Components/Panels/ServicesPanel.dart';
import 'package:nekrodev/Components/Panels/WhoWeArePanel.dart';
import 'package:nekrodev/NavBar/NavBars.dart';

/// HomePage is the Landing Page
/// It is a Single Page
/// It also uses Responsive

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBars(),
                AdvancedInnovation(),
                WhoWeArePanel(),
                ServicesPanel(),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
