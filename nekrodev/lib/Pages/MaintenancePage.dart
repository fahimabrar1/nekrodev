import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Maintenance/MaintenancePanel.dart';
import 'package:nekrodev/NavBar/NavBars.dart';
import 'package:nekrodev/Responsive/Responsive.dart';

///
/// Maintenance Page Shows Then Single Maintenance Page
/// It Show Maintenence Text with Rive Animation Vectors
/// It also uses Responsive Navbars with Maintenance Panel
///

class MaintenancePage extends StatefulWidget {
  const MaintenancePage({Key? key}) : super(key: key);

  @override
  _MaintenancePageState createState() => _MaintenancePageState();
}

class _MaintenancePageState extends State<MaintenancePage> {
  /// MaintenancePanel_M is for Mobile
  /// MaintenancePanel_T is for Tablet
  /// MaintenancePanel_D is for Desktop
  Responsive maintenanceResponsive = new Responsive(
    mobile: MaintenancePanel_M(),
    tablet: MaintenancePanel_T(),
    desktop: MaintenancePanel_D(),
    laptop: Container(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBars(),
            maintenanceResponsive,
          ],
        ),
      ),
    );
  }
}
