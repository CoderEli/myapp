import 'package:flutter/material.dart';

class LinedBackgroundPainter extends CustomPainter {
  final double lineHeight;
  final Paint linePaint;

  LinedBackgroundPainter({required this.lineHeight})
    : linePaint = Paint()
        ..color = Colors.deepOrange.withValues(alpha: 0.3)
        ..strokeWidth = 1.0;

  @override
  void paint(Canvas canvas, Size size) {
    double y = 0;
    while (y < size.height) {
      y += lineHeight;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), linePaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
