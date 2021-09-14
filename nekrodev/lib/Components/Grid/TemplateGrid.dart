import 'dart:math';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/Grid/GridCategory.dart';

import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';
import 'GridPanel.dart';
import 'RadioButton.dart';

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
  }

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
      reAnimateOnVisibility: false,
    );

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Wrap(alignment: WrapAlignment.center, children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Filter: ",
                      style:
                          Fonts.gRubik(14, MyColor.blackFont, FontWeight.w500),
                    ),
                    GridCategory(
                        sampleData: sampleData,
                        callBack: (optn) {
                          setState(() {
                            option = optn;
                          });
                        })
                  ]),
            ]),
          ),

          //With predefined options
          Flexible(
            child: Container(
              margin: EdgeInsets.all(mobileBorderMargin),
              child: LiveGrid.options(
                shrinkWrap: true,
                options: options,

                // Like GridView.builder, but also includes animation property
                itemBuilder: buildAnimatedItem,

                // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
                itemCount: mainList[tag.indexOf(option)].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
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
    return mainList[tag.indexOf(option)][index].retWid();
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
