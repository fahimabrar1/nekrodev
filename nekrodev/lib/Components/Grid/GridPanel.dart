import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';

import '../MyColors.dart';

class GridPanel {
  String tag;
  String text;
  String image;
  GridPanel({required this.text, required this.tag, required this.image});

  Widget retWid() {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                // color: (tag == "red")
                //     ? Colors.red
                //     : (tag == "green")
                //         ? Colors.green
                //         : Colors.blue,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(cardBorderRadius),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 50,
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
                  style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
