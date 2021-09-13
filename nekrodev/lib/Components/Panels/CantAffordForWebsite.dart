import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';
import 'package:nekrodev/Components/Painters/TrapiShape.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import 'package:vector_math/vector_math.dart';

///
/// This CantAffordForWebsite file Contains All the CantAffordForWebsite Such As for Desktop, Mobile, Tablet
/// These Different CantAffordForWebsite Are Used For Different Devices Using Responsive Class
///

///
/// CantAffordForWebsite Responsive Calls All the childs Through Responsive.
///

class CantAffordForWebsite extends StatelessWidget {
  CantAffordForWebsite({Key? key}) : super(key: key);

  late Responsive CantAffordForWebsiteResponsive = new Responsive(
      mobile: CantAffordForWebsite_Mobile(),
      tablet: CantAffordForWebsite_Tablet(),
      desktop: CantAffordForWebsite_Desktop(),
      laptop: CantAffordForWebsite_Desktop(
        laptopWidth: laptopContainerWidth,
      ));
  @override
  Widget build(BuildContext context) {
    return CantAffordForWebsiteResponsive;
  }
}

///
/// This CantAffordForWebsite_Desktop is Desktop View Of CantAffordForWebsite
///

class CantAffordForWebsite_Desktop extends StatefulWidget {
  double? laptopWidth;
  CantAffordForWebsite_Desktop({this.laptopWidth, Key? key}) : super(key: key);

  @override
  _CantAffordForWebsite_DesktopState createState() =>
      _CantAffordForWebsite_DesktopState();
}

class _CantAffordForWebsite_DesktopState
    extends State<CantAffordForWebsite_Desktop> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: CustomPaint(
          painter: TrapiShape(color: MyColor.blue, angle: radians(2)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: (widget.laptopWidth != null)
                    ? laptopContainerWidth
                    : desktopContainerWidth,
                child: Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 100),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-2 / 360),
                                    child: Text("Can't Afford For A Website?",
                                        style: Fonts.gRubik(54, MyColor.white,
                                            FontWeight.bold)),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-2 / 360),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        color: MyColor.darkblue,
                                        borderRadius: BorderRadius.circular(
                                            cardBorderRadius),
                                      ),
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        "How about to rent it !!",
                                        style: Fonts.gRubik(
                                            36, MyColor.white, FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                height: 300,
                                width: 300,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text("But How?",
                                          style: Fonts.gRubik(18, MyColor.white,
                                              FontWeight.bold)),
                                    ),
                                    Flexible(
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry'sstandard dummy text ever since the 1500s",
                                          style: Fonts.gRubik(
                                              14,
                                              MyColor.whitehover,
                                              FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            CantAffortContentPanel(
                              cardNo: 1,
                              icon: Icons.business_center,
                              title: "Want To Start A Business?",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                            CantAffortContentPanel(
                              cardNo: 2,
                              icon: Icons.format_shapes,
                              title: "Chose A Templete",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                            CantAffortContentPanel(
                              cardNo: 3,
                              icon: Icons.book_online,
                              title: "Move Your Business To Online",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///
/// This CantAffordForWebsite_Tablet is Tablet View Of CantAffordForWebsite
///

class CantAffordForWebsite_Tablet extends StatefulWidget {
  const CantAffordForWebsite_Tablet({Key? key}) : super(key: key);

  @override
  _CantAffordForWebsite_TabletState createState() =>
      _CantAffordForWebsite_TabletState();
}

class _CantAffordForWebsite_TabletState
    extends State<CantAffordForWebsite_Tablet> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: CustomPaint(
          painter: TrapiShape(color: MyColor.blue, angle: radians(2)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: laptopContainerWidth,
                margin: EdgeInsets.only(
                    left: mobileBorderMargin, right: mobileBorderMargin),
                child: Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 100),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-2 / 360),
                                    child: Text("Can't Afford For A Website?",
                                        style: Fonts.gRubik(54, MyColor.white,
                                            FontWeight.bold)),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-2 / 360),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        color: MyColor.darkblue,
                                        borderRadius: BorderRadius.circular(
                                            cardBorderRadius),
                                      ),
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        "How about to rent it !!",
                                        style: Fonts.gRubik(
                                            36, MyColor.white, FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 300,
                                width: 300,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text("But How?",
                                          style: Fonts.gRubik(18, MyColor.white,
                                              FontWeight.bold)),
                                    ),
                                    Flexible(
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry'sstandard dummy text ever since the 1500s",
                                          style: Fonts.gRubik(
                                              14,
                                              MyColor.whitehover,
                                              FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CantAffortContentPanel(
                              Tab: true,
                              cardNo: 1,
                              icon: Icons.business_center,
                              title: "Want To Start A Business?",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                            CantAffortContentPanel(
                              Tab: true,
                              cardNo: 2,
                              icon: Icons.format_shapes,
                              title: "Chose A Templete",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                            CantAffortContentPanel(
                              Tab: true,
                              cardNo: 3,
                              icon: Icons.book_online,
                              title: "Move Your Business To Online",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///
/// This CantAffordForWebsite_Mobile is Mobile View Of CantAffordForWebsite
///

class CantAffordForWebsite_Mobile extends StatefulWidget {
  const CantAffordForWebsite_Mobile({Key? key}) : super(key: key);

  @override
  _CantAffordForWebsite_MobileState createState() =>
      _CantAffordForWebsite_MobileState();
}

class _CantAffordForWebsite_MobileState
    extends State<CantAffordForWebsite_Mobile> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: CustomPaint(
          painter: TrapiShape(color: MyColor.blue, angle: radians(2)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: laptopContainerWidth,
                margin: EdgeInsets.only(
                    left: mobileBorderMargin, right: mobileBorderMargin),
                child: Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 100),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-2 / 360),
                                    child: Text("Can't Afford For A Website?",
                                        style: Fonts.gRubik(36, MyColor.white,
                                            FontWeight.bold)),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(-2 / 360),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        color: MyColor.darkblue,
                                        borderRadius: BorderRadius.circular(
                                            cardBorderRadius),
                                      ),
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        "How about to rent it !!",
                                        style: Fonts.gRubik(
                                            24, MyColor.white, FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 300,
                                width: 300,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Text("But How?",
                                          style: Fonts.gRubik(18, MyColor.white,
                                              FontWeight.bold)),
                                    ),
                                    Flexible(
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry'sstandard dummy text ever since the 1500s",
                                          style: Fonts.gRubik(
                                              14,
                                              MyColor.whitehover,
                                              FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CantAffortContentPanel(
                              mobile: true,
                              cardNo: 1,
                              icon: Icons.business_center,
                              title: "Want To Start A Business?",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                            CantAffortContentPanel(
                              mobile: true,
                              cardNo: 2,
                              icon: Icons.format_shapes,
                              title: "Chose A Templete",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                            CantAffortContentPanel(
                              mobile: true,
                              cardNo: 3,
                              icon: Icons.book_online,
                              title: "Move Your Business To Online",
                              content:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///
/// CantAffortContentPanel class is the Panel Contains Number,Logo,Title Nand Content
///

class CantAffortContentPanel extends StatelessWidget {
  bool? Tab;
  bool? mobile;
  int cardNo;
  IconData icon;
  String title;
  String content;
  CantAffortContentPanel({
    this.Tab,
    this.mobile,
    required this.cardNo,
    required this.icon,
    required this.title,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
        child: FittedBox(
          child: Container(
            width: (Tab == true) ? 400 : 300,
            height: (Tab == true) ? 400 : 300,
            margin: (Tab == true || mobile == true)
                ? EdgeInsets.only(top: 25, bottom: 25)
                : EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: MyColor.white,
              borderRadius: BorderRadius.circular(cardBorderRadius),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: MyColor.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(cardBorderRadius),
                      bottomRight: Radius.circular(cardBorderRadius),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      cardNo.toString(),
                      style: Fonts.gRubik(
                        18,
                        MyColor.white,
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    top: 40,
                  ),
                  child: Icon(
                    icon,
                    color: MyColor.blue,
                    size: (Tab == true) ? 54 : 42,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 30, top: (Tab == true) ? 20 : 10),
                  child: Text(
                    title,
                    style: Fonts.gRubik(
                      (Tab == true) ? 21 : 16,
                      MyColor.blue,
                      FontWeight.w500,
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    //color: MyColor.blue,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    child: Text(
                      content,
                      style: Fonts.gRubik(
                        (Tab == true) ? 18 : 14,
                        MyColor.blackFont,
                        FontWeight.normal,
                      ),
                    ),
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
