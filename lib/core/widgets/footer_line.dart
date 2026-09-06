import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FooterLine extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
    ..color=AppColors.label
    ..strokeWidth= 0.6
    ..style=PaintingStyle.stroke;
   
   final paint1=Paint()
    ..color=AppColors.label
    ..strokeWidth= 0.6
    ..style=PaintingStyle.stroke;

  
final path1 = Path()
  ..moveTo(size.width / 2, size.height / 2 - 5)
  ..lineTo(size.width / 2 + 5, size.height / 2)
  ..lineTo(size.width / 2, size.height / 2 + 5)
  ..lineTo(size.width / 2 - 5, size.height / 2)
  ..close();

    
   

    canvas.drawLine(Offset(0, size.height/2), Offset(((size.width/2)-5), size.height/2), paint1);
    canvas.drawPath(path1, paint);
    canvas.drawLine(Offset(((size.width/2)+5), size.height/2), Offset(size.width, size.height/2), paint1);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}