import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';

class RectButton extends StatefulWidget {
  final String title;
  final EdgeInsets padding;
  const RectButton({required this.title, required this.padding, Key? key})
      : super(key: key);

  @override
  _RectButtonState createState() => _RectButtonState();
}

class _RectButtonState extends State<RectButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColor.blue,
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
      child: new Material(
        child: new InkWell(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          onTap: () {
            print("tapped");
          },
          child: new Container(
            padding: widget.padding,
            child: Text(
              widget.title,
              style: Fonts.gRubik(16, MyColor.white, FontWeight.normal),
            ),
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
