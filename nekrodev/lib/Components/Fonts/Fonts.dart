import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nekrodev/Components/MyColors.dart';

class Fonts {
  static TextStyle gRubik(double fontSize, Color color, FontWeight fontWeight) {
    return GoogleFonts.rubik(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
