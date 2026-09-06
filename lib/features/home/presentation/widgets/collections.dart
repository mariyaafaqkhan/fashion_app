import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class Collections extends StatefulWidget {
  final String img;
  final String sImg;
  final String video;
  const Collections({super.key, required this.img, required this.sImg, required this.video});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("COLLECTIONS", style: AppTheme.lightTheme.textTheme.titleLarge?.copyWith(color:AppColors.titleActive, letterSpacing: 4,height:40/18),),
        SizedBox(height: 20,),
 Stack(
  alignment: AlignmentGeometry.centerRight,
    children: [
      Image.asset(widget.img,),
      Positioned(
        right: 50,
        child: Text("10",style:TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 163,
          height: 244/163,
          letterSpacing: -31,
          color: AppColors.body
        )),
      ),
     Positioned(right:25,
         
          child: Text("October",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 41,height: 62/41, letterSpacing:0, color:AppColors.offWhite),)),
         Positioned(right:50,
         bottom: 90,
         child: Text("Collection", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,height: 29/13, letterSpacing: 6,color:AppColors.offWhite)))
       
    ],
  ),
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
     child: Stack(
       children: [
         Image.asset(widget.sImg),
         Positioned(right:25,
         top: 32,
          child: Text("Autumn",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 41,height: 62/41, letterSpacing:-1),)),
         Positioned(right:50,
         top: 80,
         child: Text("Collection", style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,height: 26/12, letterSpacing: 5.31)))
       ],
     ),
   ),
    Stack(alignment: AlignmentGeometry.center,
      children: [
        Image.asset(widget.video, ),
        SvgPicture.asset(AppConstants.videoIcon)
      ],
    ),
      ],
    );
  }
}