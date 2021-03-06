import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Animations/SlideAndFadeAnimations.dart';
import 'package:nekrodev/Components/Buttons/RectButton.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import 'package:rive/rive.dart';
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

class AdvancedInnovation extends StatelessWidget {
  final Function setController;
  AdvancedInnovation({required this.setController, Key? key}) : super(key: key);

  late Responsive AdvancedResponsive = new Responsive(
      mobile: AdvancedInnovation_Mobile(setController: setController),
      tablet: AdvancedInnovation_Tablet(setController: setController),
      desktop: AdvancedInnovation_Desktop(
        setController: setController,
      ),
      laptop: AdvancedInnovation_Desktop(
        setController: setController,
        laptopWidth: laptopContainerWidth,
      ));

  @override
  Widget build(BuildContext context) {
    return AdvancedResponsive;
  }
}

///
/// This AdvancedInnovation Desktop Gives A Slide And Fade Animation to Contents.
///

class AdvancedInnovation_Desktop extends StatefulWidget {
  final Function setController;

  final double? laptopWidth;
  AdvancedInnovation_Desktop(
      {required this.setController, this.laptopWidth, Key? key})
      : super(key: key);

  @override
  _AdvancedInnovation_DesktopState createState() =>
      _AdvancedInnovation_DesktopState();
}

class _AdvancedInnovation_DesktopState
    extends State<AdvancedInnovation_Desktop> {
  @override
  Widget build(BuildContext context) {
    final titleKey = GlobalKey();
    final subTitleKey = GlobalKey();
    final buttonKey = GlobalKey();
    return Flexible(
      child: Container(
        //color: Colors.amber,

        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 100, bottom: 100),
            width: desktopContainerWidth,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                            playNow: true,
                            animatedBoxKey: titleKey,
                            IntervalStart: 0,
                            IntervalEnd: 0.5,
                            second: 1,
                            offsetRange: 0.2,
                            curve: Curves.easeInOut,
                            transitionType: TransitionType.LeftToRight,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  key: titleKey,
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
                        SlideAndFade(
                          playNow: true,
                          animatedBoxKey: buttonKey,
                          IntervalStart: 0.5,
                          IntervalEnd: 1,
                          second: 1,
                          offsetRange: 0.2,
                          curve: Curves.easeInOut,
                          transitionType: TransitionType.BottomToTop,
                          child: Container(
                            key: buttonKey,
                            margin: EdgeInsets.only(top: 30, bottom: 30),
                            child: RectButton(
                              setController: widget.setController,
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
                Expanded(
                  child: Container(
                    width: 400,
                    height: 400,
                    alignment: Alignment.center,
                    //color: Colors.red,
                    child: RiveAnimation.asset('homepage.riv'),
                    //padding: EdgeInsets.only(top: 50, bottom: 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///
/// This AdvancedInnovation Tablet Gives A Slide And Fade Animation to Contents.
///

class AdvancedInnovation_Tablet extends StatefulWidget {
  final Function setController;
  AdvancedInnovation_Tablet({required this.setController, Key? key})
      : super(key: key);

  @override
  _AdvancedInnovation_TabletState createState() =>
      _AdvancedInnovation_TabletState();
}

class _AdvancedInnovation_TabletState extends State<AdvancedInnovation_Tablet> {
  @override
  Widget build(BuildContext context) {
    final titleKey = GlobalKey();
    final subTitleKey = GlobalKey();
    final buttonKey = GlobalKey();
    return Flexible(
      child: Container(
        //color: Colors.amber,
        child:
            //Advanced Content And Rive

            Container(
          padding: EdgeInsets.only(
              left: mobileBorderMargin, right: mobileBorderMargin),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  //color: Colors.amber,
                  padding: EdgeInsets.only(top: 50),

                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          playNow: true,
                          animatedBoxKey: titleKey,
                          IntervalStart: 0.25,
                          IntervalEnd: 0.75,
                          second: 1,
                          offsetRange: 0.2,
                          curve: Curves.easeInOut,
                          transitionType: TransitionType.LeftToRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              RichText(
                                key: titleKey,
                                text: TextSpan(
                                  text: "Advanced\nInnovative\nIT Solutions",
                                  style: Fonts.gRubik(
                                      54, MyColor.blackFont, FontWeight.bold),
                                ),
                              ),
                              FittedBox(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 12, left: 5),
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
                      SlideAndFade(
                        playNow: true,
                        animatedBoxKey: subTitleKey,
                        IntervalStart: 0.25,
                        IntervalEnd: 0.75,
                        second: 1,
                        offsetRange: 0.2,
                        curve: Curves.easeInOut,
                        transitionType: TransitionType.LeftToRight,
                        child: RichText(
                          key: subTitleKey,
                          text: TextSpan(
                            text:
                                "We run all kind of IT services that vow success.",
                            style: Fonts.gRubik(
                                16, MyColor.blackFont, FontWeight.normal),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: SlideAndFade(
                          playNow: true,
                          animatedBoxKey: buttonKey,
                          IntervalStart: 0.5,
                          IntervalEnd: 1,
                          second: 1,
                          offsetRange: 0.2,
                          curve: Curves.easeInOut,
                          transitionType: TransitionType.BottomToTop,
                          child: Container(
                            key: buttonKey,
                            margin: EdgeInsets.only(
                                top: 30, right: 100, bottom: 30),
                            child: RectButton(
                              setController: widget.setController,
                              FontSize: 16,
                              fontColor: MyColor.white,
                              backgroundColor: MyColor.blue,
                              title: "View Demos",
                              padding: EdgeInsets.all(30),
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
    );
  }
}

///
/// This AdvancedInnovation Mobile Gives A Slide And Fade Animation to Contents.
///

class AdvancedInnovation_Mobile extends StatefulWidget {
  final Function setController;
  AdvancedInnovation_Mobile({required this.setController, Key? key})
      : super(key: key);

  @override
  _AdvancedInnovation_MobileState createState() =>
      _AdvancedInnovation_MobileState();
}

class _AdvancedInnovation_MobileState extends State<AdvancedInnovation_Mobile> {
  @override
  Widget build(BuildContext context) {
    final titleKey = GlobalKey();
    final subTitleKey = GlobalKey();
    final buttonKey = GlobalKey();
    return Flexible(
      child: Container(
        //color: Colors.amber,

        //Advanced Content And Rive

        child: Container(
          padding: EdgeInsets.only(
              left: mobileBorderMargin, right: mobileBorderMargin),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  //color: Colors.amber,
                  padding: EdgeInsets.only(top: 50),

                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                          playNow: true,
                          animatedBoxKey: titleKey,
                          IntervalStart: 0.25,
                          IntervalEnd: 0.75,
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
                                  margin: EdgeInsets.only(bottom: 12, left: 5),
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
                      SlideAndFade(
                        playNow: true,
                        animatedBoxKey: subTitleKey,
                        IntervalStart: 0.5,
                        IntervalEnd: 1,
                        second: 1,
                        offsetRange: 0.2,
                        curve: Curves.easeInOut,
                        transitionType: TransitionType.LeftToRight,
                        child: RichText(
                          key: subTitleKey,
                          text: TextSpan(
                            text:
                                "We run all kind of IT services that vow success.",
                            style: Fonts.gRubik(
                                16, MyColor.blackFont, FontWeight.normal),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: SlideAndFade(
                          playNow: true,
                          animatedBoxKey: buttonKey,
                          IntervalStart: 0.5,
                          IntervalEnd: 1,
                          second: 1,
                          offsetRange: 0.2,
                          curve: Curves.easeInOut,
                          transitionType: TransitionType.BottomToTop,
                          child: Container(
                            key: buttonKey,
                            margin: EdgeInsets.only(
                                top: 30, right: 100, bottom: 30),
                            child: RectButton(
                              setController: widget.setController,
                              FontSize: 16,
                              fontColor: MyColor.white,
                              backgroundColor: MyColor.blue,
                              title: "View Demos",
                              padding: EdgeInsets.all(30),
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
    );
  }
}
