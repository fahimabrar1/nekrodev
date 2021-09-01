import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';
import 'package:rive/rive.dart';

class MaintenancePanel_D extends StatefulWidget {
  const MaintenancePanel_D({Key? key}) : super(key: key);

  @override
  _MaintenancePanel_DState createState() => _MaintenancePanel_DState();
}

class _MaintenancePanel_DState extends State<MaintenancePanel_D> {
  late Artboard artboard;
  late RiveAnimationController riveAnimationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 80,
      //color: Colors.red,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage("images/maintenance_bg.png"),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 800,
              width: 800,
              margin: EdgeInsets.only(right: borderMargin),
              //color: Colors.red,
              child: Stack(
                children: [
                  RiveAnimation.asset('maintenance.riv'),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                        top: (borderMargin / 2) + 10, right: borderMargin),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'UNDER\n',
                        style: Fonts.gRubik(
                            36, MyColor.blackFont, FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'CONSTRUCTION',
                            style: Fonts.gRubik(
                                24, MyColor.blackFont, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                        top: borderMargin + 85, right: borderMargin - 15),
                    child: Text(
                      "!",
                      style:
                          Fonts.gRubik(36, MyColor.blackFont, FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: new Alignment(0.5, 1.75),
            child: Container(
              height: 500,
              width: 500,
              //color: Colors.red,
              child: Image(
                image: AssetImage("images/maintenance_cone.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: borderMargin, bottom: borderMargin),
              child: Text(
                "SITE IS UNDER\nMAINTENANCE.",
                style: Fonts.gRubik(72, MyColor.blackFont, FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MaintenancePanel_T extends StatefulWidget {
  const MaintenancePanel_T({Key? key}) : super(key: key);

  @override
  _MaintenancePanel_TState createState() => _MaintenancePanel_TState();
}

class _MaintenancePanel_TState extends State<MaintenancePanel_T> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 80,
      //color: Colors.red,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage("images/maintenance_bg.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 600,
              width: 600,
              margin: EdgeInsets.only(right: 100),
              //color: Colors.red,
              child: Stack(
                children: [
                  RiveAnimation.asset('maintenance.riv'),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                        top: (borderMargin / 2) - 35,
                        right: borderMargin - 105),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'UNDER\n',
                        style: Fonts.gRubik(
                            36, MyColor.blackFont, FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'CONSTRUCTION',
                            style: Fonts.gRubik(
                                24, MyColor.blackFont, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                        top: borderMargin - 18, right: borderMargin - 87),
                    child: Text(
                      "!",
                      style:
                          Fonts.gRubik(36, MyColor.blackFont, FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: new Alignment(0.6, 1.75),
            child: Container(
              height: 400,
              width: 400,
              //color: Colors.red,
              child: Image(
                image: AssetImage("images/maintenance_cone.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "SITE IS UNDER\nMAINTENANCE.",
                style: Fonts.gRubik(72, MyColor.blackFont, FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MaintenancePanel_M extends StatefulWidget {
  const MaintenancePanel_M({Key? key}) : super(key: key);

  @override
  _MaintenancePanel_MState createState() => _MaintenancePanel_MState();
}

class _MaintenancePanel_MState extends State<MaintenancePanel_M> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 80,
      //color: Colors.red,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage("images/maintenance_bg.png"),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 600,
              width: 600,
              margin: EdgeInsets.all(50),
              //color: Colors.red,
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 100),
                      child: RiveAnimation.asset('maintenance.riv')),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        bottom: (borderMargin / 2) - 60, left: 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'UNDER\n',
                        style: Fonts.gRubik(
                            18, MyColor.blackFont, FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'CONSTRUCTION',
                            style: Fonts.gRubik(
                                14, MyColor.blackFont, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 110, left: 102),
                    child: Text(
                      "!",
                      style:
                          Fonts.gRubik(24, MyColor.blackFont, FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "SITE IS UNDER\nMAINTENANCE.",
                style: Fonts.gRubik(36, MyColor.blackFont, FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
