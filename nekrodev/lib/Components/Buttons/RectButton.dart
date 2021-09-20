import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';

class RectButton extends StatefulWidget {
  final String title;
  final double FontSize;
  final EdgeInsets padding;
  final voidMethod? alertdialogue;
  final Color fontColor;
  final Color backgroundColor;
  Function? setController;

  RectButton(
      {this.setController,
      required this.title,
      required this.FontSize,
      this.alertdialogue,
      required this.padding,
      required this.fontColor,
      required this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  _RectButtonState createState() => _RectButtonState();
}

class _RectButtonState extends State<RectButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
      child: new Material(
        child: new InkWell(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          onTap: () {
            if (widget.alertdialogue != null) {
              widget.alertdialogue!();
            } else {
              widget.setController!();
            }
            print("tapped");
          },
          child: new Container(
            padding: widget.padding,
            child: Text(
              widget.title,
              style: Fonts.gRubik(
                  widget.FontSize, widget.fontColor, FontWeight.w400),
            ),
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
