import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Animations/SlideAndFadeAnimations.dart';
import 'package:nekrodev/Components/Buttons/RectButton.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import 'package:rive/rive.dart';
import 'package:flutter/src/painting/gradient.dart' as gradient;
import '../EnumHolders.dart';
import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

///
/// This AdvancedInnovationResponsive file Contains All the AdvancedInnovationResponsive Such As for Desktop, Mobile, Tablet
/// These Different AdvancedInnovationResponsive Are Used For Different Devices Using Responsive Class
///

///
/// AdvancedInnovationResponsive Responsive Calls All the childs Through Responsive.
///

class AdvancedInnovationResponsive extends StatelessWidget {
  AdvancedInnovationResponsive({Key? key}) : super(key: key);

  late Responsive AdvancedResponsive = new Responsive(
      mobile: AdvancedInnovation_Mobile(),
      tablet: AdvancedInnovation_Mobile(),
      desktop: AdvancedInnovation_Desktop());

  @override
  Widget build(BuildContext context) {
    return AdvancedResponsive;
  }
}

///
/// This AdvancedInnovation Desktop Gives A Slide And Fade Animation to Contents.
///

class AdvancedInnovation_Desktop extends StatefulWidget {
  const AdvancedInnovation_Desktop({Key? key}) : super(key: key);

  @override
  _AdvancedInnovation_DesktopState createState() =>
      _AdvancedInnovation_DesktopState();
}

class _AdvancedInnovation_DesktopState
    extends State<AdvancedInnovation_Desktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      //color: Colors.amber,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: gradient.LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: <Color>[
                  Colors.black.withOpacity(0.08),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: borderMargin, right: borderMargin),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "/ / ",
                            style: Fonts.gRubik(
                                16, MyColor.blue, FontWeight.normal),
                            children: [
                              TextSpan(
                                text: "Best IT Solutions Provider",
                                style: Fonts.gRubik(
                                    16, MyColor.blackFont, FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: SlideAndFade(
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.LeftToRight,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Advanced\nInnovative\nIT Solutions",
                                    style: Fonts.gRubik(
                                        63, MyColor.blackFont, FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 12, left: 5),
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                "We run all kind of IT services that vow success.",
                            style: Fonts.gRubik(
                                16, MyColor.blackFont, FontWeight.normal),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 30),
                            child: RectButton(
                                FontSize: 16,
                                fontColor: MyColor.white,
                                backgroundColor: MyColor.blue,
                                title: "View Demos",
                                padding: EdgeInsets.all(30)))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    //color: Colors.red,
                    child: RiveAnimation.asset('homepage.riv'),
                    padding: EdgeInsets.only(top: 50, bottom: 50),
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

///
/// This AdvancedInnovation Tablet Gives A Slide And Fade Animation to Contents.
///

class AdvancedInnovation_Tablet extends StatefulWidget {
  const AdvancedInnovation_Tablet({Key? key}) : super(key: key);

  @override
  _AdvancedInnovation_TabletState createState() =>
      _AdvancedInnovation_TabletState();
}

class _AdvancedInnovation_TabletState extends State<AdvancedInnovation_Tablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      //color: Colors.amber,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: gradient.LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: <Color>[
                  Colors.black.withOpacity(0.08),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: sideBorderMargin, right: sideBorderMargin),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "/ / ",
                            style: Fonts.gRubik(
                                16, MyColor.blue, FontWeight.normal),
                            children: [
                              TextSpan(
                                text: "Best IT Solutions Provider",
                                style: Fonts.gRubik(
                                    16, MyColor.blackFont, FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: SlideAndFade(
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.LeftToRight,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Advanced\nInnovative\nIT Solutions",
                                    style: Fonts.gRubik(
                                        54, MyColor.blackFont, FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 12, left: 5),
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                "We run all kind of IT services that vow success.",
                            style: Fonts.gRubik(
                                16, MyColor.blackFont, FontWeight.normal),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: RectButton(
                            FontSize: 14,
                            fontColor: MyColor.white,
                            backgroundColor: MyColor.blue,
                            title: "View Demos",
                            padding: EdgeInsets.all(25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    //color: Colors.red,
                    child: RiveAnimation.asset('homepage.riv'),
                    padding: EdgeInsets.only(top: 50, bottom: 50),
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

///
/// This AdvancedInnovation Mobile Gives A Slide And Fade Animation to Contents.
///

class AdvancedInnovation_Mobile extends StatefulWidget {
  const AdvancedInnovation_Mobile({Key? key}) : super(key: key);

  @override
  _AdvancedInnovation_MobileState createState() =>
      _AdvancedInnovation_MobileState();
}

class _AdvancedInnovation_MobileState extends State<AdvancedInnovation_Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      //color: Colors.amber,
      child: Stack(
        children: [
          //Light Black Gradent Overlay

          Container(
            decoration: BoxDecoration(
              gradient: gradient.LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: <Color>[
                  Colors.black.withOpacity(0.08),
                  Colors.transparent,
                ],
              ),
            ),
          ),

          //Advanced Content And Rive

          Container(
            padding: EdgeInsets.only(
                left: mobileBorderMargin, right: mobileBorderMargin),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    //color: Colors.amber,
                    padding: EdgeInsets.only(top: 50),

                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "/ / ",
                                  style: Fonts.gRubik(
                                      16, MyColor.blue, FontWeight.normal),
                                ),
                                TextSpan(
                                  text: "Best IT Solutions Provider",
                                  style: Fonts.gRubik(
                                      16, MyColor.blackFont, FontWeight.normal),
                                ),
                                TextSpan(
                                  text: "/ / ",
                                  style: Fonts.gRubik(
                                      16, MyColor.blue, FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FittedBox(
                          child: SlideAndFade(
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.LeftToRight,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Advanced\nInnovative\nIT Solutions",
                                    style: Fonts.gRubik(
                                        54, MyColor.blackFont, FontWeight.bold),
                                  ),
                                ),
                                FittedBox(
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(bottom: 12, left: 5),
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: MyColor.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                "We run all kind of IT services that vow success.",
                            style: Fonts.gRubik(
                                16, MyColor.blackFont, FontWeight.normal),
                          ),
                        ),
                        FittedBox(
                          child: Container(
                            margin: EdgeInsets.only(top: 30, right: 100),
                            child: RectButton(
                              FontSize: 16,
                              fontColor: MyColor.white,
                              backgroundColor: MyColor.blue,
                              title: "View Demos",
                              padding: EdgeInsets.all(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   child: Container(
                //     alignment: Alignment.center,
                //     //color: Colors.red,
                //     child: RiveAnimation.asset('homepage.riv'),
                //     padding: EdgeInsets.only(bottom: 20),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}