import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;

class verifyBackgroundDesgin extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.50), Offset(size.width, size.height * 0.50), [
      Color.fromARGB(255, 255, 92, 47),
      Color.fromARGB(255, 255, 103, 61),
      Color.fromARGB(255, 255, 103, 61),
      Color.fromARGB(255, 255, 101, 58),
    ], [
      .5,
      .6,
      .72,
      .8,
    ]);

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 253, 253, 253)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(size.width, 0);
    path1.lineTo(size.width, size.height * 0.2151429);
    path1.quadraticBezierTo(size.width * 0.9472500, size.height * 0.2579286,
        size.width * 0.8270000, size.height * 0.2177143);
    path1.cubicTo(
        size.width * 0.7088750,
        size.height * 0.1845714,
        size.width * 0.6266250,
        size.height * 0.1731429,
        size.width * 0.5545000,
        size.height * 0.2165714);
    path1.cubicTo(
        size.width * 0.4981250,
        size.height * 0.2474286,
        size.width * 0.3643750,
        size.height * 0.2160000,
        size.width * 0.2630000,
        size.height * 0.1845714);
    path1.cubicTo(
        size.width * 0.1370000,
        size.height * 0.1457143,
        size.width * 0.0590000,
        size.height * 0.2197143,
        0,
        size.height * 0.2405714);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
