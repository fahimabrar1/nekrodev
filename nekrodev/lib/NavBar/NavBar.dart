import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Animations/SlideAndFadeAnimations.dart';
import 'package:nekrodev/Components/EnumHolders.dart';
import 'package:nekrodev/Components/RectButton.dart';
import 'package:nekrodev/NavBar/NavbarItem.dart';

import '../Components/MyColors.dart';
import '../Components/MyGlobalVaraibles.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: sideBorderMargin, right: sideBorderMargin),
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(color: MyColor.white),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    //color: Colors.red,
                    alignment: Alignment.centerRight,
                    child: SlideAndFade(
                      second: 1,
                      curve: Curves.easeInOut,
                      transitionType: TransitionType.LeftToRight,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    //color: Colors.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NavbarItem(title: "Home"),
                        NavbarItem(title: "About Us"),
                        NavbarItem(title: "Contact Us"),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    //color: Colors.red,
                    alignment: Alignment.centerLeft,
                    child: RectButton(
                      title: "Contact Us",
                      padding: EdgeInsets.only(
                        left: 25,
                        right: 25,
                        top: 15,
                        bottom: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabletNavBar extends StatefulWidget {
  const TabletNavBar({Key? key}) : super(key: key);

  @override
  _TabletNavBarState createState() => _TabletNavBarState();
}

class _TabletNavBarState extends State<TabletNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: sideBorderMargin, right: sideBorderMargin),
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(color: MyColor.white),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    //color: Colors.red,
                    alignment: Alignment.centerLeft,
                    child: SlideAndFade(
                      second: 1,
                      curve: Curves.easeInOut,
                      transitionType: TransitionType.LeftToRight,
                    ),
                  ),
                ),
                // Expanded(
                //   flex: 2,
                //   child: Container(
                //     //color: Colors.yellow,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         NavbarItem(title: "Home"),
                //         NavbarItem(title: "About Us"),
                //         NavbarItem(title: "Contact Us"),
                //       ],
                //     ),
                //   ),
                // ),
                Flexible(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: MyColor.blue),
                        borderRadius: BorderRadius.circular(cardBorderRadius),
                      ),
                      child: new Material(
                        child: new InkWell(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                          onTap: () {
                            print("tapped");
                          },
                          child: Icon(
                            Icons.menu,
                            color: MyColor.blue,
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
