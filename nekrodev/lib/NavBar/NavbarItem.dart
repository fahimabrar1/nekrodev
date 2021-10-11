import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';
import 'package:nekrodev/NavBar/NavBars.dart';
import 'package:nekrodev/Routes/PageRoutesName.dart';

import '../Components/MyColors.dart';

class NavbarItem extends StatefulWidget {
  final String title;
  final NavBarColorPalette navBarColorPalette;
  final String pageRoutesNames;
  NavbarItem(
      {required this.title,
      required this.navBarColorPalette,
      required this.pageRoutesNames,
      Key? key})
      : super(key: key);

  @override
  _NavbarItemState createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool hover = false;

  GlobalKey innerContainerkey = GlobalKey();
  double underlineWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: MouseRegion(
              onEnter: (Event) => setCol(true),
              onExit: (Event) => setCol(false),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    widget.pageRoutesNames,
                  );
                },
                child: AnimatedContainer(
                  color: (hover)
                      ? widget.navBarColorPalette.hoverColor
                      : widget.navBarColorPalette.barColor,
                  padding: (hover)
                      ? EdgeInsets.only(left: 30, right: 30)
                      : EdgeInsets.only(left: 20, right: 20),
                  duration: Duration(milliseconds: navmarAnimTime),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    key: innerContainerkey,
                    //color: Colors.red,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.title,
                            style: hover
                                ? Fonts.gRubik(
                                    18,
                                    widget.navBarColorPalette.fontColor,
                                    FontWeight.normal)
                                : Fonts.gRubik(
                                    16,
                                    widget
                                        .navBarColorPalette.contactButtonColor,
                                    FontWeight.normal),
                          ),
                          AnimatedContainer(
                              duration: Duration(milliseconds: navmarAnimTime),
                              height: 2,
                              width: hover ? underlineWidth : 0,
                              curve: Curves.fastOutSlowIn,
                              color: hover
                                  ? MyColor.blue
                                  : widget.navBarColorPalette.barColor),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  setCol(bool bool) {
    setState(() {
      RenderBox renderBox =
          innerContainerkey.currentContext!.findRenderObject() as RenderBox;
      underlineWidth = renderBox.size.width;
      hover = bool;
    });
  }
}
