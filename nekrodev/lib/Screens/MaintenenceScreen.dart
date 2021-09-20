import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Pages/MaintenancePage.dart';

///
/// MaintenenceScreen is Used To call MaintenancePage
///

class MaintenenceScreen extends StatelessWidget {
  const MaintenenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.whiteBg,
        child: MaintenancePage(),
      ),
    );
  }
}
