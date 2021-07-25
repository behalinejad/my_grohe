

import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {

  final double startPointX ;
  final double startPointY ;
  final double controlPointX ;
  final double controlPointY ;
  final double endPointX ;
  final double endPointY ;
  CurvePainter(this.startPointX,this.startPointY,this.controlPointX,this.controlPointY,this.endPointX,this.endPointY);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()
      ..color = Colors.white.withAlpha(40);
    final path = Path();

    path.moveTo(startPointX , startPointY);
    path.quadraticBezierTo(controlPointX, controlPointY, endPointX, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(startPointX, size.height);
    path.close();
    canvas.drawPath(path, white);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}