import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/Footer/Footer.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';
import 'package:nekrodev/NavBar/NavBars.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  get laptopWidth => null;

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavBars(),
                    SizedBox(height: 100),
                    Container(
                      width: (widget.laptopWidth != null)
                          ? widget.laptopWidth
                          : desktopContainerWidth,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(20),
                                    //color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
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
                                                text: "A little about us",
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
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "COMPANY OVERVIEW",
                                          style: Fonts.gRubik(
                                              32,
                                              MyColor.blackFont,
                                              FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            text: aboutText,
                                            style: Fonts.gRubik(
                                              18,
                                              MyColor.blackFont,
                                              FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(20),
                                    child: Image.asset(
                                      "/images/globe.png",
                                      height: 600,
                                      width: 600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Footer(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
