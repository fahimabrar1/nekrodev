import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Animations/SlideAndFadeAnimations.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import '../EnumHolders.dart';
import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

///
/// This ServicesPanel file Contains All the ServicesPanel Such As for Desktop, Mobile, Tablet
/// These Different ServicesPanel Are Used For Different Devices Using Responsive Class
///

///
/// ServicesPanel Responsive Calls All the childs Through Responsive.
///

class ServicesPanel extends StatelessWidget {
  ServicesPanel({Key? key}) : super(key: key);

  late Responsive ServicePanelResponsove = new Responsive(
    mobile: ServicesPanel_Mobile(),
    tablet: ServicesPanel_Tablet(),
    desktop: ServicesPanel_Desktop(),
    laptop: ServicesPanel_Desktop(
      laptopWidth: laptopContainerWidth,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return ServicePanelResponsove;
  }
}

///
/// This ServicesPanel_Desktop is Desktop View Of ServicesPanel
///

class ServicesPanel_Desktop extends StatefulWidget {
  double? laptopWidth;
  ServicesPanel_Desktop({Key? key, this.laptopWidth}) : super(key: key);

  @override
  _ServicesPanel_DesktopState createState() => _ServicesPanel_DesktopState();
}

class _ServicesPanel_DesktopState extends State<ServicesPanel_Desktop> {
  @override
  Widget build(BuildContext context) {
    final ServiceTextKey = GlobalKey();
    final ServiceTitleKey = GlobalKey();
    final ServiceImageKey = GlobalKey();
    final ServiceConentKey = GlobalKey();
    return Flexible(
      child: Container(
        //height: 700,
        //color: Colors.amber[100],
        width: (widget.laptopWidth != null)
            ? widget.laptopWidth
            : desktopContainerWidth,
        child: Row(
          children: [
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: FittedBox(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 80),
                                    //color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: SlideAndFade(
                                        animatedBoxKey: ServiceImageKey,
                                        transitionType:
                                            TransitionType.LeftToRight,
                                        curve: Curves.ease,
                                        offsetRange: 0.1,
                                        IntervalStart: 0.25,
                                        IntervalEnd: 1,
                                        second: 1,
                                        child: Container(
                                          key: ServiceImageKey,
                                          height: (widget.laptopWidth != null)
                                              ? 300
                                              : 400,
                                          width: (widget.laptopWidth != null)
                                              ? 300
                                              : 400,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                cardBorderRadius),
                                            child: Image(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "/images/pexels1.jpeg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SlideAndFade(
                                        animatedBoxKey: ServiceTextKey,
                                        transitionType:
                                            TransitionType.BottomToTop,
                                        curve: Curves.ease,
                                        offsetRange: 0.5,
                                        IntervalStart: 0,
                                        IntervalEnd: 1,
                                        second: 1,
                                        child: RichText(
                                          key: ServiceTextKey,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "// ",
                                                style: Fonts.gRubik(
                                                    18,
                                                    MyColor.blue,
                                                    FontWeight.normal),
                                              ),
                                              TextSpan(
                                                text: "Services",
                                                style: Fonts.gRubik(
                                                    18,
                                                    MyColor.blackFont,
                                                    FontWeight.normal),
                                              ),
                                              TextSpan(
                                                text: "//",
                                                style: Fonts.gRubik(
                                                    18,
                                                    MyColor.blue,
                                                    FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SlideAndFade(
                                        animatedBoxKey: ServiceTitleKey,
                                        transitionType:
                                            TransitionType.BottomToTop,
                                        curve: Curves.ease,
                                        offsetRange: 0.1,
                                        IntervalStart: 0.25,
                                        IntervalEnd: 1,
                                        second: 1,
                                        child: Text(
                                          "Quality Services With Best Prices",
                                          key: ServiceTitleKey,
                                          style: Fonts.gRubik(
                                              54,
                                              MyColor.blackFont,
                                              FontWeight.bold),
                                        ),
                                      ),
                                      // Text(
                                      //   "For Your Business",
                                      //   style: Fonts.gRubik(
                                      //       42,
                                      //       MyColor.blackFont,
                                      //       FontWeight.bold),
                                      // ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Flexible(
                                  child: SlideAndFade(
                                    animatedBoxKey: ServiceConentKey,
                                    transitionType: TransitionType.BottomToTop,
                                    curve: Curves.ease,
                                    offsetRange: 0.1,
                                    IntervalStart: 0.25,
                                    IntervalEnd: 1,
                                    second: 1,
                                    child: Container(
                                      key: ServiceConentKey,
                                      //color: Colors.red,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ProvidedService(title: "Service"),
                                          ProvidedService(title: "Service"),
                                          ProvidedService(title: "Service"),
                                          ProvidedService(title: "Service"),
                                          ProvidedService(title: "Service"),
                                        ],
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
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

///
/// This ServicesPanel_Tablet is Tablet View Of ServicesPanel
///

class ServicesPanel_Tablet extends StatefulWidget {
  const ServicesPanel_Tablet({Key? key}) : super(key: key);

  @override
  _ServicesPanel_TabletState createState() => _ServicesPanel_TabletState();
}

class _ServicesPanel_TabletState extends State<ServicesPanel_Tablet> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        //height: 700,
        //color: Colors.amber[100],
        width: laptopContainerWidth,
        child: Row(
          children: [
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: FittedBox(
                                  child: Container(
                                    //color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 400,
                                        width: 400,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              cardBorderRadius),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "/images/pexels1.jpeg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 40, top: 50, right: 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "// ",
                                                          style: Fonts.gRubik(
                                                              18,
                                                              MyColor.blue,
                                                              FontWeight
                                                                  .normal),
                                                        ),
                                                        TextSpan(
                                                          text: "Services",
                                                          style: Fonts.gRubik(
                                                              18,
                                                              MyColor.blackFont,
                                                              FontWeight
                                                                  .normal),
                                                        ),
                                                        TextSpan(
                                                          text: "//",
                                                          style: Fonts.gRubik(
                                                              18,
                                                              MyColor.blue,
                                                              FontWeight
                                                                  .normal),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Quality Services With Best Prices",
                                                    style: Fonts.gRubik(
                                                        36,
                                                        MyColor.blackFont,
                                                        FontWeight.bold),
                                                  ),
                                                  // Text(
                                                  //   "",
                                                  //   style: Fonts.gRubik(
                                                  //       42,
                                                  //       MyColor.blackFont,
                                                  //       FontWeight.bold),
                                                  // ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(left: 20),
                                          //color: Colors.red,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

///
/// This ServicesPanel_Mobile is  Mobile View Of ServicesPanel
///

class ServicesPanel_Mobile extends StatefulWidget {
  const ServicesPanel_Mobile({Key? key}) : super(key: key);

  @override
  _ServicesPanel_MobileState createState() => _ServicesPanel_MobileState();
}

class _ServicesPanel_MobileState extends State<ServicesPanel_Mobile> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        //height: 700,
        //color: Colors.amber[100],
        width: laptopContainerWidth,
        child: Container(
          margin: EdgeInsets.only(
              left: mobileBorderMargin, right: mobileBorderMargin),
          padding: EdgeInsets.only(top: 25, bottom: 25),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: FittedBox(
                                  child: Container(
                                    //color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 300,
                                        width: 300,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              cardBorderRadius),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "/images/pexels1.jpeg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "// ",
                                                          style: Fonts.gRubik(
                                                              14,
                                                              MyColor.blue,
                                                              FontWeight
                                                                  .normal),
                                                        ),
                                                        TextSpan(
                                                          text: "Services",
                                                          style: Fonts.gRubik(
                                                              14,
                                                              MyColor.blackFont,
                                                              FontWeight
                                                                  .normal),
                                                        ),
                                                        TextSpan(
                                                          text: "//",
                                                          style: Fonts.gRubik(
                                                              14,
                                                              MyColor.blue,
                                                              FontWeight
                                                                  .normal),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Quality Services With",
                                                  style: Fonts.gRubik(
                                                      24,
                                                      MyColor.blackFont,
                                                      FontWeight.bold),
                                                ),
                                                Text(
                                                  "Best Prices",
                                                  style: Fonts.gRubik(
                                                      32,
                                                      MyColor.blackFont,
                                                      FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      )),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(left: 20),
                                          //color: Colors.red,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                              ProvidedService(title: "Service"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

///
/// ProvidedService class is the Symbol And Text Section In Service
///

class ProvidedService extends StatelessWidget {
  String title;
  ProvidedService({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  height: 30,
                  width: 30,
                  color: MyColor.blue,
                  alignment: Alignment.center,
                  child: Wrap(
                    children: [
                      Icon(
                        Icons.approval,
                        size: 14,
                        color: MyColor.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                title,
                style: Fonts.gRubik(
                  24,
                  MyColor.blackFont,
                  FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
