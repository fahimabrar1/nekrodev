import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape/triangle.dart';

class TrapiShape extends CustomPainter {
  final Color color;
  final double angle;
  TrapiShape({required this.color, required this.angle});
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final Paint paint = new Paint()..color = color;
    double OffsetHeight = tan(angle) * size.width;
    Path path = Path();
    path.moveTo(0, OffsetHeight);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
