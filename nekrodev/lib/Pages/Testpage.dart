import 'dart:core';
import 'dart:developer' as l;
import 'dart:html';
import 'dart:math';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';

enum ColorOption { red, green, blue }

///
/// RadioModel model for radioButton
///

class RadioModel {
  bool isSelected;
  final String buttonText;

  RadioModel(this.isSelected, this.buttonText);
}

///
/// RadioItem
///

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 50.0,
            child: new Center(
              child: new Text(_item.buttonText,
                  style: new TextStyle(
                      color: _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: new BoxDecoration(
              color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
              border: new Border.all(
                  width: 1.0,
                  color: _item.isSelected ? Colors.blueAccent : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
        ],
      ),
    );
  }
}

///
/// ColorPanel Class Holds the data and widget for panel
///

class ColorPanel {
  String tag;
  String text;

  ColorPanel({required this.text, required this.tag});

  Widget retWid() {
    return Container(
      color: (tag == "red")
          ? Colors.red
          : (tag == "green")
              ? Colors.green
              : Colors.blue,
      child: Text(
        text,
        style: Fonts.gRubik(24, MyColor.blackFont, FontWeight.bold),
      ),
    );
  }
}

///
/// TestPage Class
///

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<String> color = ["none", "red", "green", "blue"];
  late String option;
  late List<List<ColorPanel>> mainList;
  late List<RadioModel> sampleData;

//  ColorOptions option = ColorOptions.none;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    option = color[0];

    mainList = [
      new List.generate(
        40,
        (index) => new ColorPanel(
            text: index.toString(),
            tag: (Random().nextInt(3) == 0)
                ? color[1]
                : (Random().nextInt(3) == 1)
                    ? color[2]
                    : color[3]),
      )
    ];
    for (int i = 1; i < color.length; i++) {
      mainList.add([]);
    }
    for (var list in mainList[0]) {
      for (var col in color) {
        if (list.tag == col) {
          mainList[color.indexOf(col)].add(list);

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

    return Flexible(
      child: Container(
        child: Column(
          children: [
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           option = color[0];
            //         });
            //       },
            //       child: Text("Show All"),
            //       style: ButtonStyle(
            //         backgroundColor:
            //             MaterialStateProperty.resolveWith((states) {
            //           return Colors.teal;
            //         }),
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           option = color[1];
            //         });
            //       },
            //       child: Text("Red"),
            //       style: ButtonStyle(
            //         backgroundColor:
            //             MaterialStateProperty.resolveWith((states) {
            //           return Colors.red;
            //         }),
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           option = color[2];
            //         });
            //       },
            //       child: Text("Green"),
            //       style: ButtonStyle(
            //         backgroundColor:
            //             MaterialStateProperty.resolveWith((states) {
            //           return Colors.green;
            //         }),
            //       ),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           option = color[3];
            //         });
            //       },
            //       child: Text("Blue"),
            //       style: ButtonStyle(
            //         backgroundColor:
            //             MaterialStateProperty.resolveWith((states) {
            //           return Colors.blue;
            //         }),
            //       ),
            //     ),
            //   ],
            // ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: FutureBuilder<List<RadioModel>>(
                  future: getbutotns(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      l.log("empty");
                      return Container();
                    }
                    l.log("Data");

                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: sampleData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new InkWell(
                          //highlightColor: Colors.red,
                          splashColor: Colors.blueAccent,
                          onTap: () {
                            setState(() {
                              sampleData.forEach(
                                  (element) => element.isSelected = false);
                              sampleData[index].isSelected = true;
                            });
                          },
                          child: new RadioItem(sampleData[index]),
                        );
                      },
                    );
                  },
                ),
              ),
            ),

            // With predefined options
            Flexible(
              child: LiveGrid.options(
                shrinkWrap: true,
                options: options,

                // Like GridView.builder, but also includes animation property
                itemBuilder: buildAnimatedItem,

                // Other properties correspond to the `ListView.builder` / `ListView.separated` widget
                itemCount: (option == color[0])
                    ? mainList[0].length
                    : (option == color[1])
                        ? mainList[1].length
                        : (option == color[2])
                            ? mainList[2].length
                            : mainList[3].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
              ),
            ),
          ],
        ),
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
    if (option == color[1]) {
      return mainList[1][index].retWid();
    } else if (option == color[2]) {
      return mainList[2][index].retWid();
    } else if (option == color[3]) {
      return mainList[3][index].retWid();
    } else {
      return mainList[0][index].retWid();
    }
    //return mainList[index].retWid();
  }

  Future<List<RadioModel>> getbutotns() async {
    sampleData.add(new RadioModel(true, "Show All"));
    sampleData.add(new RadioModel(true, "Red"));
    sampleData.add(new RadioModel(true, "Green"));
    sampleData.add(new RadioModel(true, "Blue"));
    return await sampleData;
  }
}
