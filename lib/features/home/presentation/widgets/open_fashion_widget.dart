import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OpenFashionWidget extends StatelessWidget {
  final String img;
  final String label;
  const OpenFashionWidget({super.key, required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       Image.asset(img, height: 50, width: 50,),
       Text(label,style: AppTheme.lightTheme.textTheme.titleSmall?.copyWith(fontSize: 13, height: 20/13, color: AppColors.label, letterSpacing: 0),textAlign: TextAlign.center,maxLines: 2,)
      ],
    );
  }
}