import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

class WhoWeArePanel extends StatelessWidget {
  const WhoWeArePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      //color: Colors.amber[100],
      padding: EdgeInsets.only(left: borderMargin, right: borderMargin),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
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
                  ],
                ),
              ),
              FittedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "IT Solutions For Your Business",
                        style: Fonts.gRubik(
                            42, MyColor.blackFont, FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 80),
                                //color: Colors.red,
                                child: Align(
                                  alignment: Alignment.topLeft,
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
                        child: Column(
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Container(
                                  margin: EdgeInsets.only(left: 80),
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
          ))
        ],
      ),
    );
  }
}
