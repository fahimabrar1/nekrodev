import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';

import '../Components/MyColors.dart';

class NavbarItem extends StatefulWidget {
  final String title;
  NavbarItem({required this.title, Key? key}) : super(key: key);

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
                onTap: () {},
                child: AnimatedContainer(
                  color: (hover) ? MyColor.whitehover : MyColor.white,
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
                                    16, MyColor.blackFont, FontWeight.normal)
                                : Fonts.gRubik(
                                    14, MyColor.blackFont, FontWeight.normal),
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: navmarAnimTime),
                            height: 2,
                            width: hover ? underlineWidth : 0,
                            curve: Curves.fastOutSlowIn,
                            color: hover ? MyColor.blue : MyColor.white,
                          ),
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
