import 'package:flutter/cupertino.dart';
import 'package:nekrodev/Components/MyGlobalVaraibles.dart';

import 'RadioButton.dart';

///
/// GridCategory Responsive Holds All the Categoriy List for the TemplateGrid.
///

class GridCategory extends StatefulWidget {
  List<RadioModel> sampleData;
  final setString callBack;
  GridCategory({required this.sampleData, required this.callBack, Key? key})
      : super(key: key);

  @override
  _GridCategoryState createState() => _GridCategoryState();
}

class _GridCategoryState extends State<GridCategory> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Wrap(
        runSpacing: 4,
        spacing: 4,
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: List.generate(
          widget.sampleData.length,
          (index) => RadioItem(
            widget.sampleData[index],
            onClick: (val) {
              setState(
                () {
                  widget.sampleData
                      .forEach((element) => element.isSelected = false);
                  widget.sampleData[index].isSelected = true;
                  widget.callBack(val);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
