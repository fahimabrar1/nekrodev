import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/NavBar/NavBars.dart';
import 'package:nekrodev/Responsive/Responsive.dart';

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
    return Column(
      children: [
        NavBarResponsive(),
        Container(
          height: 500,
          color: Colors.amber,
        ),
      ],
    );
  }
}
