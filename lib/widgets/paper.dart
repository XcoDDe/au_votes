import 'package:flutter/material.dart';

class Paper extends CustomPainter {
  final double paperPosition;
  double animation=0;

  Paper({required this.paperPosition});

  @override
  void paint(Canvas canvas, Size size) {
     final paperPaint = Paint()..color = Color.fromARGB(165, 255, 255, 255);     
    // Draw the paper
    final paperSize = Size(size.width/2, size.height);
    final paperRect = Rect.fromCenter(
        center: Offset(size.width / 2, paperPosition),
        width: paperSize.width,
        height: paperSize.height);
         canvas.drawRRect(
        RRect.fromRectAndRadius(paperRect, const Radius.circular(5)), paperPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
