import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ButtonsWidget extends StatefulWidget {
  final String label;
  final String leadIcon;
  final String lastIcon;
  final bool isFilled;
  final bool isLeading;
  final bool isLast;
  final double hz;
  final double vt;
  final double wd;
  final double wd2;
  
  const ButtonsWidget({super.key, this.isFilled=false, required this.label, required this.leadIcon, required this.lastIcon,  this.hz=30, this.vt=8,  this.isLeading=false,  this.isLast=false, this.wd= 8, this.wd2=8 });

  @override
  State<ButtonsWidget> createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: widget.hz, vertical: widget.vt),
        height: 40,

        decoration: BoxDecoration(
          color:widget.isFilled? AppColors.titleActive: null,
          border: widget.isFilled?null: Border.all(color: AppColors.border)
        ),
        child: Row(
          children: [
            if(widget.isLeading)...[
              SvgPicture.asset(widget.leadIcon, height: 24, color: widget.isFilled?AppColors.offWhite: AppColors.titleActive,),
              SizedBox(width: widget.wd,),
              ],
            Text(widget.label, style: AppTheme.lightTheme.textTheme.bodyLarge?.copyWith(color:widget.isFilled? AppColors.offWhite: AppColors.titleActive),),
            if(widget.isLast)...[
               SizedBox(width: widget.wd2,),
                SvgPicture.asset(widget.lastIcon, height: 24,color: widget.isFilled?AppColors.offWhite: AppColors.titleActive,),

            ]
          ],
        ),
      ),
    );
  }
}