import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

class homePageBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(255, 244, 240, 240)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint1.shader = ui.Gradient.linear(
      Offset(size.width * -0.01, size.height * 0.11),
      Offset(size.width * 0.54, size.height * 0.11),
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
    path1.quadraticBezierTo(
        size.width * 0.3766313, 0, size.width * 0.5021750, 0);
    path1.cubicTo(
        size.width * 0.3274750,
        size.height * 0.0291143,
        size.width * 0.5361250,
        size.height * 0.0995714,
        size.width * 0.4414500,
        size.height * 0.1744857);
    path1.cubicTo(
        size.width * 0.3625000,
        size.height * 0.2264571,
        size.width * -0.0145750,
        size.height * 0.0785714,
        0,
        size.height * 0.1718143);
    path1.quadraticBezierTo(0, size.height * 0.1288607, 0, 0);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
