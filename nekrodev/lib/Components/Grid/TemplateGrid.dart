import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/Grid/GridCategory.dart';
import 'package:nekrodev/Responsive/Responsive.dart';

import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';
import 'GridPanel.dart';
import 'RadioButton.dart';

///
/// This TemplateGrid file Contains All the TemplateGrid Such As for Desktop, Mobile, Tablet
/// These Different TemplateGrid Are Used For Different Devices Using Responsive Class
///

///
/// TemplateGrid Responsive Calls All the childs Through Responsive.
///

class TemplateGrid extends StatefulWidget {
  const TemplateGrid({Key? key}) : super(key: key);

  @override
  _TemplateGridState createState() => _TemplateGridState();
}

class _TemplateGridState extends State<TemplateGrid> {
  List<String> tag = ["Show All", "e-commerece", "Networking", "IT"];
  List<String> imageslist = [
    'images/image2.png',
    'images/image3.png',
    'images/image4.png',
    'images/image5.png',
    'images/image6.png',
    'images/image7.png',
  ];
  late String option;
  late List<RadioModel> sampleData;
  late List<List<GridPanel>> mainList;
  late Responsive TemplateGrid_Responsive;

//  ColorOptions option = ColorOptions.none;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    option = tag[0];
    sampleData = [
      new RadioModel(true, "Show All", tag[0]),
      new RadioModel(false, "IT", tag[3]),
      new RadioModel(false, "e-commerece", tag[1]),
      new RadioModel(false, "Networking", tag[2]),
    ];
    mainList = [
      [
        new GridPanel(
          text: "NekroDev",
          tag: "IT",
          image: imageslist[0],
        ),
        new GridPanel(
          text: "eCarnival",
          tag: "IT",
          image: imageslist[1],
        ),
        new GridPanel(
          text: "Techno",
          tag: "IT",
          image: imageslist[2],
        ),
        new GridPanel(
          text: "Swap",
          tag: "IT",
          image: imageslist[3],
        ),
        new GridPanel(
          text: "Bata",
          tag: "e-commerece",
          image: imageslist[4],
        ),
        new GridPanel(
          text: "Apex",
          tag: "e-commerece",
          image: imageslist[4],
        ),
        new GridPanel(
          text: "eBay",
          tag: "e-commerece",
          image: imageslist[5],
        ),
        new GridPanel(
          text: "eDokan",
          tag: "IT",
          image: imageslist[4],
        ),
        new GridPanel(
          text: "NekroDev",
          tag: "IT",
          image: imageslist[0],
        ),
        new GridPanel(
          text: "eCarnival",
          tag: "IT",
          image: imageslist[1],
        ),
        new GridPanel(
          text: "Techno",
          tag: "IT",
          image: imageslist[2],
        ),
        new GridPanel(
          text: "Swap",
          tag: "IT",
          image: imageslist[3],
        ),
        new GridPanel(
          text: "Bata",
          tag: "e-commerece",
          image: imageslist[4],
        ),
        new GridPanel(
          text: "Apex",
          tag: "e-commerece",
          image: imageslist[4],
        ),
        new GridPanel(
          text: "eBay",
          tag: "e-commerece",
          image: imageslist[5],
        ),
        new GridPanel(
          text: "eDokan",
          tag: "IT",
          image: imageslist[4],
        ),
      ]
    ];
    for (int i = 1; i < tag.length; i++) {
      mainList.add([]);
    }
    for (var list in mainList[0]) {
      for (var col in tag) {
        if (list.tag == col) {
          mainList[tag.indexOf(col)].add(list);

          break;
        }
      }
    }
    TemplateGrid_Responsive = new Responsive(
      mobile: TemplateGrid_Mobile(
        sampleData: sampleData,
        mainList: mainList,
        tag: tag,
        option: option,
      ),
      tablet: TemplateGrid_Tablet(
        sampleData: sampleData,
        mainList: mainList,
        tag: tag,
        option: option,
      ),
      desktop: TemplateGrid_Desktop(
        sampleData: sampleData,
        mainList: mainList,
        tag: tag,
        option: option,
      ),
      laptop: TemplateGrid_Desktop(
        sampleData: sampleData,
        mainList: mainList,
        option: option,
        tag: tag,
        isLaptop: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TemplateGrid_Responsive;
  }
}

///
/// This TemplateGrid_Desktop is Desktop View Of TemplateGrid
///

class TemplateGrid_Desktop extends StatefulWidget {
  late String option;
  late List<RadioModel> sampleData;
  final List<List<GridPanel>> mainList;
  final List<String> tag;
  bool? isLaptop;
  TemplateGrid_Desktop(
      {required this.sampleData,
      required this.mainList,
      required this.tag,
      required this.option,
      this.isLaptop,
      Key? key})
      : super(key: key);

  @override
  _TemplateGrid_DesktopState createState() => _TemplateGrid_DesktopState();
}

class _TemplateGrid_DesktopState extends State<TemplateGrid_Desktop> {
  @override
  Widget build(BuildContext context) {
    final options = LiveOptions(
      // Start animation after (default zero)
      delay: Duration(microseconds: 100),

      // Show each item through (default 250)
      showItemInterval: Duration(milliseconds: 100),

      // Animation duration (default 250)
      showItemDuration: Duration(milliseconds: 500),

      // Animations starts at 0.05 visible
      // item fraction in sight (default 0.025)
      visibleFraction: 0.1,

      // Repeat the animation of the appearance
      // when scrolling in the opposite direction (default false)
      // To get the effect as in a showcase for ListView, set true
      reAnimateOnVisibility: true,
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 20, left: 10, right: 20),
            child: Wrap(alignment: WrapAlignment.center, children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Filter: ",
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w500),
                  ),
                  GridCategory(
                    sampleData: widget.sampleData,
                    callBack: (optn) {
                      setState(() {
                        widget.option = optn;
                      });
                    },
                  ),
                ],
              ),
            ]),
          ),

          //With predefined options
          Flexible(
            child: Container(
              padding: EdgeInsets.all(mobileBorderMargin * 3),
              //color: Colors.amber,
              child: LiveGrid.options(
                shrinkWrap: true,
                options: options,

                // Like GridView.builder, but also includes animation property
                itemBuilder: buildAnimatedItem,

                // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
                itemCount:
                    widget.mainList[widget.tag.indexOf(widget.option)].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (widget.isLaptop != null) ? 3 : 4,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build animated item (helper for all examples)
  Widget buildAnimatedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    // For example wrap with fade transition
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      // And slide transition
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        // Paste you Widget
        child: getFromList(index),
      ),
    );
  }

  Widget getFromList(int index) {
    return widget.mainList[widget.tag.indexOf(widget.option)][index]
        .retWid(context);
    // if (option == tag[1]) {
    //   return mainList[1][index].retWid();
    // } else if (option == tag[2]) {
    //   return mainList[2][index].retWid();
    // } else if (option == tag[3]) {
    //   return mainList[3][index].retWid();
    // } else {
    //   return mainList[0][index].retWid();
    // }
    //return mainList[index].retWid();
  }
}

///
/// This TemplateGrid_Tablet is Desktop View Of TemplateGrid
///

class TemplateGrid_Tablet extends StatefulWidget {
  late String option;
  late List<RadioModel> sampleData;
  final List<List<GridPanel>> mainList;
  final List<String> tag;
  TemplateGrid_Tablet(
      {required this.sampleData,
      required this.mainList,
      required this.tag,
      required this.option,
      Key? key})
      : super(key: key);

  @override
  _TemplateGrid_TabletState createState() => _TemplateGrid_TabletState();
}

class _TemplateGrid_TabletState extends State<TemplateGrid_Tablet> {
  @override
  Widget build(BuildContext context) {
    final options = LiveOptions(
      // Start animation after (default zero)
      delay: Duration(microseconds: 100),

      // Show each item through (default 250)
      showItemInterval: Duration(milliseconds: 100),

      // Animation duration (default 250)
      showItemDuration: Duration(milliseconds: 500),

      // Animations starts at 0.05 visible
      // item fraction in sight (default 0.025)
      visibleFraction: 0.1,

      // Repeat the animation of the appearance
      // when scrolling in the opposite direction (default false)
      // To get the effect as in a showcase for ListView, set true
      reAnimateOnVisibility: true,
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 20, left: 10, right: 20),
            child: Wrap(alignment: WrapAlignment.center, children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Filter: ",
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w500),
                  ),
                  GridCategory(
                    sampleData: widget.sampleData,
                    callBack: (optn) {
                      setState(() {
                        widget.option = optn;
                      });
                    },
                  ),
                ],
              ),
            ]),
          ),

          //With predefined options
          Flexible(
            child: Container(
              padding: EdgeInsets.all(mobileBorderMargin * 3),
              //color: Colors.amber,
              child: LiveGrid.options(
                shrinkWrap: true,
                options: options,

                // Like GridView.builder, but also includes animation property
                itemBuilder: buildAnimatedItem,

                // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
                itemCount:
                    widget.mainList[widget.tag.indexOf(widget.option)].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (MediaQuery.of(context).size.width <=
                          laptopContainerWidth - 300)
                      ? 1
                      : 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build animated item (helper for all examples)
  Widget buildAnimatedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    // For example wrap with fade transition
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      // And slide transition
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        // Paste you Widget
        child: getFromList(index),
      ),
    );
  }

  Widget getFromList(int index) {
    return widget.mainList[widget.tag.indexOf(widget.option)][index]
        .retWid(context);
    // if (option == tag[1]) {
    //   return mainList[1][index].retWid();
    // } else if (option == tag[2]) {
    //   return mainList[2][index].retWid();
    // } else if (option == tag[3]) {
    //   return mainList[3][index].retWid();
    // } else {
    //   return mainList[0][index].retWid();
    // }
    //return mainList[index].retWid();
  }
}

///
/// This TemplateGrid_Mobile is Desktop View Of TemplateGrid
///

class TemplateGrid_Mobile extends StatefulWidget {
  late String option;
  late List<RadioModel> sampleData;
  final List<List<GridPanel>> mainList;
  final List<String> tag;
  TemplateGrid_Mobile(
      {required this.sampleData,
      required this.mainList,
      required this.tag,
      required this.option,
      Key? key});

  @override
  _TemplateGrid_MobileState createState() => _TemplateGrid_MobileState();
}

class _TemplateGrid_MobileState extends State<TemplateGrid_Mobile> {
  @override
  Widget build(BuildContext context) {
    final options = LiveOptions(
      // Start animation after (default zero)
      delay: Duration(microseconds: 100),

      // Show each item through (default 250)
      showItemInterval: Duration(milliseconds: 100),

      // Animation duration (default 250)
      showItemDuration: Duration(milliseconds: 500),

      // Animations starts at 0.05 visible
      // item fraction in sight (default 0.025)
      visibleFraction: 0.1,

      // Repeat the animation of the appearance
      // when scrolling in the opposite direction (default false)
      // To get the effect as in a showcase for ListView, set true
      reAnimateOnVisibility: true,
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 20, left: 10, right: 20),
            child: Wrap(alignment: WrapAlignment.center, children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Filter: ",
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w500),
                  ),
                  GridCategory(
                    sampleData: widget.sampleData,
                    callBack: (optn) {
                      setState(() {
                        widget.option = optn;
                      });
                    },
                  ),
                ],
              ),
            ]),
          ),

          //With predefined options
          Flexible(
            child: Container(
              padding: EdgeInsets.all(mobileBorderMargin * 3),
              //color: Colors.amber,
              child: LiveGrid.options(
                shrinkWrap: true,
                options: options,

                // Like GridView.builder, but also includes animation property
                itemBuilder: buildAnimatedItem,

                // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
                itemCount:
                    widget.mainList[widget.tag.indexOf(widget.option)].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: mobileBorderMargin,
                  mainAxisSpacing: mobileBorderMargin,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build animated item (helper for all examples)
  Widget buildAnimatedItem(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) {
    // For example wrap with fade transition
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      // And slide transition
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        // Paste you Widget
        child: getFromList(index),
      ),
    );
  }

  Widget getFromList(int index) {
    return widget.mainList[widget.tag.indexOf(widget.option)][index]
        .retWid(context);
    // if (option == tag[1]) {
    //   return mainList[1][index].retWid();
    // } else if (option == tag[2]) {
    //   return mainList[2][index].retWid();
    // } else if (option == tag[3]) {
    //   return mainList[3][index].retWid();
    // } else {
    //   return mainList[0][index].retWid();
    // }
    //return mainList[index].retWid();
  }
}
