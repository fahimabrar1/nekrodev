import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Footer/Footer.dart';
import 'package:nekrodev/Components/Panels/PricingPanel.dart';
import 'package:nekrodev/NavBar/NavBars.dart';

class PriccingPage extends StatefulWidget {
  const PriccingPage({Key? key}) : super(key: key);

  @override
  _PriccingPageState createState() => _PriccingPageState();
}

class _PriccingPageState extends State<PriccingPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NavBars(),
                    PricingPanel(),
                    Footer(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
