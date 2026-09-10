import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FollowUsWidget extends StatelessWidget {
  final String img;
  final String label;
  const FollowUsWidget({super.key, required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomLeft,
      children: [
        Image.asset(img),
        Container(
          padding: EdgeInsets.only(left:10),
          alignment: Alignment.centerLeft,
          height: 40,
        width: double.infinity,
          decoration: BoxDecoration(
          gradient: LinearGradient(begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
            colors: [
            Color.fromRGBO(0, 0, 0, 0),
             Color.fromRGBO(0, 0, 0, 1),
          ])
        ),child: Text(label,style: AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color: Color.fromRGBO(255, 255, 255, 1), letterSpacing: 1, height: 1),))
      ],
    );
  }
}