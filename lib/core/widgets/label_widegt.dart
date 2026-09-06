import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class LabelWidegt extends StatelessWidget {
  final String label;
  final bool isFilled;
  const LabelWidegt({super.key, required this.label, this.isFilled=false});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
      
      padding: EdgeInsets.only(top:8,bottom: 8,left: 10,right:10),
        decoration: BoxDecoration(
          color: isFilled?AppColors.inputBackground:Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: isFilled ? null:Border.all(color: AppColors.border),
        ),
        child:Row(
          children: [
            if(isFilled)
             Text("# $label",style: Theme.of(context).textTheme. bodyMedium?.copyWith(color: AppColors.body, letterSpacing: 0.01, height: 16/14),),
            if(!isFilled)...[
             Text(label,style: Theme.of(context).textTheme. bodyMedium?.copyWith(color: AppColors.label, letterSpacing: 0.01, height: 16/14),),
             SizedBox(width: 6,),
             SvgPicture.asset(AppConstants.closeIcon),
          ]],
        )
      ),
    );
  }}
