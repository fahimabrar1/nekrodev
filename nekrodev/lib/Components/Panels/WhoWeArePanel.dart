import 'package:flutter/material.dart';
import 'package:nekrodev/Animations/SlideAndFadeAnimations.dart';
import 'package:nekrodev/Components/EnumHolders.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

///
/// This WhoWeArePanelResponsive file Contains All the WhoWeArePanelResponsive Such As for Desktop, Mobile, Tablet
/// These Different WhoWeArePanelResponsive Are Used For Different Devices Using Responsive Class
///

///
/// WhoWeArePanelResponsive Responsive Calls All the childs Through Responsive.
///

class WhoWeArePanel extends StatelessWidget {
  WhoWeArePanel({Key? key}) : super(key: key);

  late Responsive WhoWeAreResponsive = new Responsive(
    mobile: WhoWeAre_Mobile(),
    tablet: WhoWeAre_Tablet(),
    desktop: WhoWeAre_Desktop(),
    laptop: WhoWeAre_Desktop(
      laptopWidth: laptopContainerWidth,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return WhoWeAreResponsive;
  }
}

//
/// This WhoWeAre Desktop Gives A Slide And Fade Animation to Contents.
///

class WhoWeAre_Desktop extends StatefulWidget {
  final double? laptopWidth;
  WhoWeAre_Desktop({this.laptopWidth, Key? key}) : super(key: key);

  @override
  _WhoWeAre_DesktopState createState() => _WhoWeAre_DesktopState();
}

class _WhoWeAre_DesktopState extends State<WhoWeAre_Desktop> {
  final headerKey = GlobalKey();
  final titleKey = GlobalKey();
  final imageKey = GlobalKey();
  final contentKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        //color: Colors.amber[100],
        width: (widget.laptopWidth != null)
            ? laptopContainerWidth
            : desktopContainerWidth,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SlideAndFade(
                          playNow: true,
                          animatedBoxKey: headerKey,
                          IntervalStart: 0.0,
                          IntervalEnd: 1,
                          second: 1,
                          offsetRange: 0.2,
                          curve: Curves.easeInOut,
                          transitionType: TransitionType.BottomToTop,
                          child: RichText(
                            key: headerKey,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "// ",
                                  style: Fonts.gRubik(
                                      18, MyColor.blue, FontWeight.normal),
                                ),
                                TextSpan(
                                  text: "WHO WE ARE ",
                                  style: Fonts.gRubik(
                                      18, MyColor.blackFont, FontWeight.normal),
                                ),
                                TextSpan(
                                  text: "//",
                                  style: Fonts.gRubik(
                                      18, MyColor.blue, FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SlideAndFade(
                          playNow: true,
                          animatedBoxKey: titleKey,
                          IntervalStart: 0.25,
                          IntervalEnd: 1,
                          second: 1,
                          offsetRange: 0.2,
                          curve: Curves.easeInOut,
                          transitionType: TransitionType.BottomToTop,
                          child: Text(
                            "IT Solutions For Your Business",
                            key: titleKey,
                            style: Fonts.gRubik(
                                54, MyColor.blackFont, FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 80),
                                    //color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SlideAndFade(
                                        playNow: false,
                                        animatedBoxKey: contentKey,
                                        IntervalStart: 0.50,
                                        IntervalEnd: 1,
                                        second: 1,
                                        offsetRange: 0.1,
                                        curve: Curves.ease,
                                        transitionType:
                                            TransitionType.LeftToRight,
                                        child: Text(
                                          "It provides solutions that manage the entireIT service delivery process.",
                                          key: contentKey,
                                          style: Fonts.gRubik(
                                            18,
                                            MyColor.blackFont,
                                            FontWeight.normal,
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
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FittedBox(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 80),
                                    //color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: SlideAndFade(
                                        playNow: false,
                                        animatedBoxKey: imageKey,
                                        IntervalStart: 0.50,
                                        IntervalEnd: 1,
                                        second: 2,
                                        offsetRange: 0.2,
                                        curve: Curves.easeInOut,
                                        transitionType:
                                            TransitionType.RightToLeft,
                                        child: Container(
                                          key: imageKey,
                                          height: (widget.laptopWidth != null)
                                              ? 280
                                              : 400,
                                          width: (widget.laptopWidth != null)
                                              ? 280
                                              : 400,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                cardBorderRadius),
                                            child: Image(
                                              fit: BoxFit.fitWidth,
                                              image: AssetImage(
                                                  "/images/pexels2.jpeg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
/// This WhoWeAre Tablet Gives A Slide And Fade Animation to Contents.
///

class WhoWeAre_Tablet extends StatefulWidget {
  const WhoWeAre_Tablet({Key? key}) : super(key: key);

  @override
  _WhoWeAre_TabletState createState() => _WhoWeAre_TabletState();
}

class _WhoWeAre_TabletState extends State<WhoWeAre_Tablet> {
  final headerKey = GlobalKey();
  final titleKey = GlobalKey();
  final imageKey = GlobalKey();
  final contentKey = GlobalKey();
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        //color: Colors.amber[100],
        width: laptopContainerWidth,
        padding: EdgeInsets.only(
          top: 100,
          left: mobileBorderMargin,
          right: mobileBorderMargin,
          bottom: 100,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: FittedBox(
                child: SlideAndFade(
                  playNow: false,
                  animatedBoxKey: imageKey,
                  IntervalStart: 0.0,
                  IntervalEnd: 1,
                  second: 1,
                  offsetRange: 0.2,
                  curve: Curves.easeInOut,
                  transitionType: TransitionType.BottomToTop,
                  child: Container(
                    key: imageKey,
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //color: Colors.red,
                            Container(
                              height: 400,
                              width: 400,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRadius),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage("/images/pexels2.jpeg"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
                child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: SlideAndFade(
                            playNow: false,
                            animatedBoxKey: contentKey,
                            IntervalStart: 0.0,
                            IntervalEnd: 1,
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.LeftToRight,
                            child: Container(
                              key: contentKey,
                              padding: EdgeInsets.only(right: 40),
                              // color: Colors.red,
                              child: Text(
                                "It provides solutions that manage the entireIT service delivery process.",
                                style: Fonts.gRubik(
                                  18,
                                  MyColor.blackFont,
                                  FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SlideAndFade(
                                playNow: false,
                                animatedBoxKey: headerKey,
                                IntervalStart: 0.0,
                                IntervalEnd: 1,
                                second: 1,
                                offsetRange: 0.2,
                                curve: Curves.easeInOut,
                                transitionType: TransitionType.BottomToTop,
                                child: RichText(
                                  key: headerKey,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "// ",
                                        style: Fonts.gRubik(18, MyColor.blue,
                                            FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text: "WHO WE ARE ",
                                        style: Fonts.gRubik(
                                            18,
                                            MyColor.blackFont,
                                            FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text: "//",
                                        style: Fonts.gRubik(18, MyColor.blue,
                                            FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: SlideAndFade(
                                  playNow: false,
                                  animatedBoxKey: titleKey,
                                  IntervalStart: 0.25,
                                  IntervalEnd: 1,
                                  second: 1,
                                  offsetRange: 0.2,
                                  curve: Curves.easeInOut,
                                  transitionType: TransitionType.BottomToTop,
                                  child: RichText(
                                    key: titleKey,
                                    softWrap: true,
                                    text: TextSpan(
                                      text: "IT Solutions For Your Business",
                                      style: Fonts.gRubik(36, MyColor.blackFont,
                                          FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

//
/// This WhoWeAre Mobile Gives A Slide And Fade Animation to Contents.
///

class WhoWeAre_Mobile extends StatefulWidget {
  const WhoWeAre_Mobile({Key? key}) : super(key: key);

  @override
  _WhoWeAre_MobileState createState() => _WhoWeAre_MobileState();
}

class _WhoWeAre_MobileState extends State<WhoWeAre_Mobile> {
  @override
  Widget build(BuildContext context) {
    final headerKey = GlobalKey();
    final titleKey = GlobalKey();
    final imageKey = GlobalKey();
    final contentKey = GlobalKey();
    return Flexible(
      child: Container(
        //color: Colors.amber[100],
        width: 960,
        padding: EdgeInsets.only(
          top: 25,
          left: mobileBorderMargin,
          right: mobileBorderMargin,
          bottom: 25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: FittedBox(
                child: Container(
                  //color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //color: Colors.red,
                          SlideAndFade(
                            playNow: false,
                            animatedBoxKey: imageKey,
                            IntervalStart: 0.0,
                            IntervalEnd: 1,
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.BottomToTop,
                            child: Container(
                              key: imageKey,
                              height: 300,
                              width: 300,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRadius),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage("/images/pexels2.jpeg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
                child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: SlideAndFade(
                            playNow: false,
                            animatedBoxKey: contentKey,
                            IntervalStart: 0.0,
                            IntervalEnd: 1,
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.LeftToRight,
                            child: Container(
                              key: contentKey,
                              padding: EdgeInsets.only(right: 20),
                              // color: Colors.red,
                              child: Text(
                                "It provides solutions that manage the entireIT service delivery process.",
                                style: Fonts.gRubik(
                                  12,
                                  MyColor.blackFont,
                                  FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: SlideAndFade(
                                  playNow: false,
                                  animatedBoxKey: headerKey,
                                  IntervalStart: 0.0,
                                  IntervalEnd: 1,
                                  second: 1,
                                  offsetRange: 0.2,
                                  curve: Curves.easeInOut,
                                  transitionType: TransitionType.BottomToTop,
                                  child: RichText(
                                    key: headerKey,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "// ",
                                          style: Fonts.gRubik(14, MyColor.blue,
                                              FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text: "WHO WE ARE ",
                                          style: Fonts.gRubik(
                                              14,
                                              MyColor.blackFont,
                                              FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text: "//",
                                          style: Fonts.gRubik(14, MyColor.blue,
                                              FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: SlideAndFade(
                                  playNow: false,
                                  animatedBoxKey: titleKey,
                                  IntervalStart: 0.25,
                                  IntervalEnd: 1,
                                  second: 1,
                                  offsetRange: 0.2,
                                  curve: Curves.easeInOut,
                                  transitionType: TransitionType.BottomToTop,
                                  child: RichText(
                                    key: titleKey,
                                    softWrap: true,
                                    text: TextSpan(
                                      text: "IT Solutions For Your Business",
                                      style: Fonts.gRubik(24, MyColor.blackFont,
                                          FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
