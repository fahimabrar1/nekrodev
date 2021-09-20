import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';
import 'package:nekrodev/Responsive/Responsive.dart';

import '../MyColors.dart';

///
/// GridPanel are the panels on TemplateGrid, it also responses according to device sizes.
///

class GridPanel {
  String tag;
  String text;
  String image;
  GridPanel({required this.text, required this.tag, required this.image});

  Widget retWid(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  // color: (tag == "red")
                  //     ? Colors.red
                  //     : (tag == "green")
                  //         ? Colors.green
                  //         : Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fitHeight),
                  borderRadius: BorderRadius.circular(cardBorderRadius),
                  border: Border.all(
                    color: MyColor.blackFont.withOpacity(0.2),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 5,
                      color: MyColor.blackFont.withOpacity(0.3),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 50,
                  right: 50,
                  bottom: (Responsive.isTablet(context) ||
                          Responsive.isMobile(context))
                      ? 25
                      : 20),
              height: (Responsive.isDesktop(context))
                  ? 50
                  : (Responsive.isLaptop(context))
                      ? 40
                      : (Responsive.isTablet(context))
                          ? 35
                          : 30,
              decoration: BoxDecoration(
                color: MyColor.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: MyColor.black.withOpacity(0.3),
                      offset: Offset(0, 1),
                      spreadRadius: 1,
                      blurRadius: 15)
                ],
              ),
              child: Center(
                child: Text(
                  text,
                  style: Fonts.gRubik(
                      (Responsive.isDesktop(context))
                          ? 14
                          : (Responsive.isLaptop(context))
                              ? 14
                              : (Responsive.isTablet(context))
                                  ? 12
                                  : 10,
                      MyColor.blackFont,
                      FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
