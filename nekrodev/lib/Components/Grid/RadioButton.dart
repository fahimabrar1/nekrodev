import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';

import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

///
/// RadioModel model for radioButton
///

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String tag;

  RadioModel(this.isSelected, this.buttonText, this.tag);
}

///
/// RadioItem
///

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  final setString onClick;
  RadioItem(this._item, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: _item.isSelected ? EdgeInsets.all(10) : EdgeInsets.all(0),
      child: InkWell(
        onTap: () {
          if (!_item.isSelected) {
            onClick(_item.tag);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: new Text(_item.buttonText,
                  style: Fonts.gRubik(
                      14,
                      _item.isSelected ? MyColor.white : MyColor.blackFont,
                      FontWeight.w600)),
            ),
          ],
        ),
      ),
      decoration: new BoxDecoration(
        color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
        borderRadius: _item.isSelected
            ? BorderRadius.circular(cardBorderRadius)
            : BorderRadius.circular(0),
      ),
    );
  }
}
