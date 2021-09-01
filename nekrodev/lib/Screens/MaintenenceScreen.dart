import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Maintenance/MaintenancePanel.dart';
import 'package:nekrodev/NavBar/NavBar.dart';
import 'package:nekrodev/Responsive/Responsive.dart';

class MaintenenceScreen extends StatefulWidget {
  const MaintenenceScreen({Key? key}) : super(key: key);

  @override
  _MaintenenceScreenState createState() => _MaintenenceScreenState();
}

class _MaintenenceScreenState extends State<MaintenenceScreen> {
  Responsive navresponsive = new Responsive(
      mobile: TabletNavBar(), tablet: TabletNavBar(), desktop: NavBar());
  Responsive maintenanceResponsive = new Responsive(
      mobile: MaintenancePanel_M(),
      tablet: MaintenancePanel_T(),
      desktop: MaintenancePanel_D());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          navresponsive,
          maintenanceResponsive,
        ],
      ),
    );
  }
}
