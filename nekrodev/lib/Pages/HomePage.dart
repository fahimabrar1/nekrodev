import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Footer/Footer.dart';
import 'package:nekrodev/Components/Grid/TemplateGrid.dart';
import 'package:nekrodev/Components/Panels/AdvancedInnovation.dart';
import 'package:nekrodev/Components/Panels/CantAffordForWebsite.dart';
import 'package:nekrodev/Components/Panels/PricingPanel.dart';
import 'package:nekrodev/Components/Panels/ServicesPanel.dart';
import 'package:nekrodev/Components/Panels/WhoWeArePanel.dart';
import 'package:nekrodev/NavBar/NavBars.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

/// HomePage is the Landing Page
/// It is a Single Page
/// It also uses Responsive

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AutoScrollController controller;
  final scrollDirection = Axis.vertical;
  final listkey = GlobalKey();
  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        //add this for advanced viewport boundary. e.g. SafeArea
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),

        //choose vertical/horizontal
        axis: scrollDirection,

        //this given value will bring the scroll offset to the nearest position in fixed row height case.
        //for variable row height case, you can still set the average height, it will try to get to the relatively closer offset
        //and then start searching.
        suggestedRowHeight: 200);
  }

  @override
  Widget build(BuildContext context) {
    return ListViewInherited(
      gkey: listkey,
      controller: controller,
      child: ListView(
        key: listkey,
        scrollDirection: scrollDirection,
        controller: controller,
        children: [
          Wrap(
            children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NavBars(),
                    AdvancedInnovation(
                      setController: () {
                        setState(() {
                          log("T");

                          controller.scrollToIndex(5,
                              duration: Duration(seconds: 1),
                              preferPosition: AutoScrollPosition.begin);
                        });
                      },
                    ),
                    WhoWeArePanel(),
                    ServicesPanel(),
                    CantAffordForWebsite(),
                    AutoScrollTag(
                      key: ValueKey(5),
                      controller: controller,
                      index: 5,
                      child: TemplateGrid(),
                    ),
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

class ListViewInherited extends InheritedWidget {
  final AutoScrollController controller;
  final GlobalKey gkey;
  final Widget child;

  ListViewInherited(
      {Key? key,
      required this.controller,
      required this.gkey,
      required this.child})
      : super(key: key, child: child);

  static AutoScrollController? getAutoScrollController(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ListViewInherited>()!
        .controller;
  }

  static GlobalKey? getGlobalKey(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ListViewInherited>()!
        .gkey;
  }

  @override
  bool updateShouldNotify(ListViewInherited oldWidget) => true;
}
