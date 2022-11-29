import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class authBackgroundDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 229, 214, 115)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint1.shader = ui.Gradient.linear(
      Offset(size.width, size.height * 0.36),
      Offset(size.width * 0.50, 0),
      [
        Color.fromARGB(255, 255, 92, 47),
        Color.fromARGB(255, 255, 103, 61),
        Color.fromARGB(255, 255, 103, 61),
        Color.fromARGB(255, 255, 101, 58),
      ],
      [
        .5,
        .6,
        .72,
        .8,
      ],
    );

    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(0, size.height * 0.3582857);
    path1.quadraticBezierTo(size.width * 0.2510000, size.height * 0.2867143,
        size.width * 0.5025000, size.height * 0.2857143);
    path1.quadraticBezierTo(size.width * 0.7510000, size.height * 0.2864286,
        size.width, size.height * 0.3571429);
    path1.lineTo(size.width, 0);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
