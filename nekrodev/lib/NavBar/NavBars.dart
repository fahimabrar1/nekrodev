import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Animations/SlideAndFadeAnimations.dart';
import 'package:nekrodev/Components/EnumHolders.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/Buttons/RectButton.dart';
import 'package:nekrodev/NavBar/NavbarItem.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import '../Components/MyColors.dart';
import '../Components/MyGlobalVaraibles.dart';

///
/// This Navbars file Contains All the Navbars Such As: Navbar, Tablet Navbar and DropdowNavbar
/// These Different Navbars Are Used For Different Devices Using Responsive Class
///

///
/// NavBar Responsive Calls All the navbarts Through Responsive And It Also Contains Dropdown Section.
///

class NavBarResponsive extends StatefulWidget {
  NavBarResponsive({Key? key}) : super(key: key);

  @override
  _NavBarResponsiveState createState() => _NavBarResponsiveState();
}

class _NavBarResponsiveState extends State<NavBarResponsive> {
  late bool dropdownNavBar = false;
  late bool showlist = false;
  late bool isDropDownNavExpanded = false;

  @override
  void initState() {
    super.initState();
    dropdownNavBar = false;
    showlist = false;
    isDropDownNavExpanded = false;
  }

  @override
  Widget build(BuildContext context) {
    final NavBarColorPalette navBarColorPalette = new NavBarColorPalette();
    late Responsive navresponsive = new Responsive(
      mobile: new MobileNavbar(
        navBarColorPalette: navBarColorPalette,
        isDropDownNavExpanded: isDropDownNavExpanded,
        setbool: (bool) {
          setDropDownNavBarState(bool);
        },
      ),
      tablet: new TabletNavBar(
        navBarColorPalette: navBarColorPalette,
        isDropDownNavExpanded: isDropDownNavExpanded,
        setbool: (bool) {
          setDropDownNavBarState(bool);
        },
      ),
      desktop: DeskTopNavBar(
        navBarColorPalette: navBarColorPalette,
      ),
    );

    late Responsive navBarDropDown = new Responsive(
      mobile: new DropdowNavbar(
        isDropDownNavExpanded: isDropDownNavExpanded,
        dropdownNavBar: dropdownNavBar,
        FontSize: 12,
        showtiles: showlist,
        changeTileVisibility: (bool) {
          setState(() {
            showlist = bool;
            isDropDownNavExpanded = bool;
          });
        },
      ),
      tablet: new DropdowNavbar(
        isDropDownNavExpanded: isDropDownNavExpanded,
        dropdownNavBar: dropdownNavBar,
        FontSize: 14,
        showtiles: showlist,
        changeTileVisibility: (bool) {
          setState(() {
            showlist = bool;
            isDropDownNavExpanded = bool;
          });
        },
      ),
      desktop: Container(),
    );

    return Center(
      child: Column(
        children: [
          navresponsive,
          navBarDropDown,
        ],
      ),
    );
  }

  void setDropDownNavBarState(bool) {
    setState(() {
      log('message');
      dropdownNavBar = bool;
      if (!bool) {
        showlist = bool;
      }
    });
  }
}

///
/// This NavBar Gives A Slide And Fade Animation to Logo/Name, Centered NavbarItems And Contact Page On Right.
///

class DeskTopNavBar extends StatefulWidget {
  final NavBarColorPalette navBarColorPalette;
  DeskTopNavBar({required this.navBarColorPalette, Key? key}) : super(key: key);

  @override
  _DeskTopNavBarState createState() => _DeskTopNavBarState();
}

class _DeskTopNavBarState extends State<DeskTopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: sideBorderMargin, right: sideBorderMargin),
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(color: widget.navBarColorPalette.barColor),
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
                      offsetRange: 1,
                      child: Text(
                        "NekroDev",
                        style: Fonts.gRubik(
                            24,
                            widget.navBarColorPalette.contactButtonColor,
                            FontWeight.bold),
                      ),
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
                        NavbarItem(
                            title: "Home",
                            navBarColorPalette: widget.navBarColorPalette),
                        NavbarItem(
                            title: "About Us",
                            navBarColorPalette: widget.navBarColorPalette),
                        NavbarItem(
                            title: "Contact Us",
                            navBarColorPalette: widget.navBarColorPalette),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    //color: Colors.red,
                    alignment: Alignment.centerLeft,
                    child: RectButton(
                      FontSize: 16,
                      title: "Contact Us",
                      fontColor:
                          widget.navBarColorPalette.contactButtonFontColor,
                      backgroundColor:
                          widget.navBarColorPalette.contactButtonColor,
                      alertdialogue: _showContactDialogue,
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

  void _showContactDialogue() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(40),
          title: const Text('Contact US'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'We will be back soon.',
                    style: Fonts.gRubik(18, Colors.black, FontWeight.w500),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'If you want to get in contact with us.',
                    style: Fonts.gRubik(18, Colors.black, FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Phone: ',
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '01912601818,',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                      TextSpan(
                        text: ' 01687056140!',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'email: ',
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'info@nekrodev.xyz',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Address: ',
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '72/73, Kazi Alauddin Road 1000 Dhaka.',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Approve'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}

///
/// This TabletNavBar Gives A Slide And Fade Animation to Logo/Name and an Expansion Button On Right To Expand and show more Navbar Items.
///

class TabletNavBar extends StatefulWidget {
  final setBool setbool;
  late bool isDropDownNavExpanded;
  final NavBarColorPalette navBarColorPalette;
  TabletNavBar(
      {required this.navBarColorPalette,
      required this.setbool,
      required this.isDropDownNavExpanded,
      Key? key})
      : super(key: key);

  @override
  _TabletNavBarState createState() => _TabletNavBarState();
}

class _TabletNavBarState extends State<TabletNavBar> {
  late bool clicked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clicked = widget.isDropDownNavExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: sideBorderMargin, right: sideBorderMargin),
      width: MediaQuery.of(context).size.width,
      color: widget.navBarColorPalette.barColor,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              //color: Colors.amber,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      //color: Colors.amber,
                      alignment: Alignment.centerLeft,
                      child: SlideAndFade(
                        offsetRange: 1,
                        child: Text(
                          "NekroDev",
                          style: Fonts.gRubik(
                              21,
                              widget.navBarColorPalette.hoverColor,
                              FontWeight.bold),
                        ),
                        second: 1,
                        curve: Curves.easeInOut,
                        transitionType: TransitionType.LeftToRight,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      //color: Colors.amber,
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: widget.navBarColorPalette.hoverColor),
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        child: new Material(
                          child: new InkWell(
                            borderRadius:
                                BorderRadius.circular(cardBorderRadius),
                            onTap: () {
                              setState(() {
                                if (clicked) {
                                  clicked = false;
                                  widget.setbool(false);
                                } else {
                                  clicked = true;

                                  widget.setbool(true);
                                }
                              });
                              print("tapped");
                            },
                            child: Icon(
                              Icons.menu,
                              color: widget.navBarColorPalette.hoverColor,
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
          ),
        ],
      ),
    );
  }
}

///
/// This Mobile Gives A Slide And Fade Animation to Logo/Name and an Expansion Button On Right To Expand and show more Navbar Items.
///

class MobileNavbar extends StatefulWidget {
  final setBool setbool;
  late bool isDropDownNavExpanded;
  final NavBarColorPalette navBarColorPalette;

  MobileNavbar(
      {required this.navBarColorPalette,
      required this.setbool,
      required this.isDropDownNavExpanded,
      Key? key})
      : super(key: key);

  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  late bool clicked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clicked = widget.isDropDownNavExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: mobileBorderMargin, right: mobileBorderMargin),
      width: MediaQuery.of(context).size.width,
      height: 80,
      color: widget.navBarColorPalette.barColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              //color: Colors.amber,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      //color: Colors.amber,
                      alignment: Alignment.centerLeft,
                      child: SlideAndFade(
                        offsetRange: 1,
                        child: Text(
                          "NekroDev",
                          style: Fonts.gRubik(
                              16,
                              widget.navBarColorPalette.contactButtonColor,
                              FontWeight.bold),
                        ),
                        second: 1,
                        curve: Curves.easeInOut,
                        transitionType: TransitionType.LeftToRight,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  widget.navBarColorPalette.contactButtonColor),
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        child: new Material(
                          child: new InkWell(
                            borderRadius:
                                BorderRadius.circular(cardBorderRadius),
                            onTap: () {
                              setState(() {
                                if (clicked) {
                                  clicked = false;
                                  widget.setbool(false);
                                } else {
                                  clicked = true;

                                  widget.setbool(true);
                                }
                              });
                              print("tapped");
                            },
                            child: Icon(
                              Icons.menu,
                              color:
                                  widget.navBarColorPalette.contactButtonColor,
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
          ),
        ],
      ),
    );
  }
}

///
/// This DropdowNavbar Slides Open and Closes The panel To Show the Items Inside The Panel.
/// The Tile Lists are shows After the expansion animation and each tile Contants a height of appromate of : 48
/// It is also used for mobile view.
///

class DropdowNavbar extends StatefulWidget {
  String? test;
  bool dropdownNavBar;
  bool showtiles;
  bool isDropDownNavExpanded;
  setBool changeTileVisibility;
  double FontSize;
  DropdowNavbar(
      {required this.dropdownNavBar,
      required this.showtiles,
      required this.FontSize,
      required this.isDropDownNavExpanded,
      required this.changeTileVisibility,
      Key? key})
      : super(key: key);

  @override
  _DropdowNavbarState createState() => _DropdowNavbarState();
}

class _DropdowNavbarState extends State<DropdowNavbar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: (widget.dropdownNavBar)
            ? MyColor.whitehover.withOpacity(0.5)
            : MyColor.white,
      ),
      duration: Duration(milliseconds: 500),
      height: widget.dropdownNavBar ? 144 : 0,
      curve: Curves.easeInOut,
      onEnd: () {
        setState(() {
          log("Tiles are " + widget.showtiles.toString());
          if (widget.dropdownNavBar) {
            widget.changeTileVisibility(true);
          }
          log("Tiles are " + widget.showtiles.toString());
        });
      },
      child: Column(
        children: [
          widget.showtiles
              ? Material(
                  color: MyColor.whitehover.withOpacity(0.5),
                  child: ListTile(
                    hoverColor: MyColor.whitehover,
                    onTap: () {},
                    title: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "Home",
                          style: Fonts.gRubik(widget.FontSize,
                              MyColor.blackFont, FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          widget.showtiles
              ? Material(
                  color: MyColor.whitehover.withOpacity(0.5),
                  child: ListTile(
                    hoverColor: MyColor.whitehover,
                    onTap: () {},
                    title: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "About Us",
                          style: Fonts.gRubik(widget.FontSize,
                              MyColor.blackFont, FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          widget.showtiles
              ? Material(
                  color: MyColor.whitehover.withOpacity(0.5),
                  child: ListTile(
                    hoverColor: MyColor.whitehover,
                    onTap: () {
                      _showContactDialogue();
                    },
                    title: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "Contact Us",
                          style: Fonts.gRubik(widget.FontSize,
                              MyColor.blackFont, FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  void _showContactDialogue() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(40),
          title: const Text('Contact US'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'We will be back soon.',
                    style: Fonts.gRubik(18, Colors.black, FontWeight.w500),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'If you want to get in contact with us.',
                    style: Fonts.gRubik(18, Colors.black, FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Phone: ',
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '01912601818,',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                      TextSpan(
                        text: ' 01687056140!',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'email: ',
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'info@nekrodev.xyz',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Address: ',
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: '72/73, Kazi Alauddin Road 1000 Dhaka.',
                        style: Fonts.gRubik(
                            16, MyColor.blackFont, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: const Text('Approve'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}

///
/// Used To Change The Color OF NavBar Easily
///

class NavBarColorPalette {
  final Color barColor = MyColor.blue;
  final Color contactButtonColor = MyColor.white;
  final Color contactButtonFontColor = MyColor.blue;
  final Color hoverColor = MyColor.white;
  final Color fontColor = MyColor.blackFont;
}
