import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

class ServicesPanel extends StatelessWidget {
  const ServicesPanel({Key? key}) : super(key: key);

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
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Container(
                                  margin: EdgeInsets.only(right: 80),
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 80),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                  ],
                                ),
                              ),
                              FittedBox(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "IT Solutions",
                                        style: Fonts.gRubik(72,
                                            MyColor.blackFont, FontWeight.bold),
                                      ),
                                      Text(
                                        "For Your Business",
                                        style: Fonts.gRubik(42,
                                            MyColor.blackFont, FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: Container(
                                  //color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      ),
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

class ProvidedService extends StatelessWidget {
  String title;
  ProvidedService({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 50,
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
    );
  }
}
