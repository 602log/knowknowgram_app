import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:knowknowgram_app/theme/colors.dart';

double deg2rad(double deg) => deg * math.pi / 180;

class CircularPaint extends CustomPainter {
  final double? progress;

  CircularPaint({
    this.progress = 0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final Paint progressPaint = Paint()
      ..color = mainMintText
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    final Offset center = Offset(
      size.width / 2,
      size.height / 2,
    );
    final double radius = size.width / 2 - 5;

    // 배경 원
    canvas.drawCircle(
      center,
      radius,
      backgroundPaint,
    );

    // 진행률 원
    final double startAngle = -90 * (math.pi / 180);
    final double sweepAngle = progress! * 2 * math.pi;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
