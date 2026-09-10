import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BlogListContentContainer extends StatelessWidget {
  final String img;
  final String label;
  const BlogListContentContainer({super.key, required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: AlignmentGeometry.bottomCenter,
          children: [
            Image.asset(img),
            Positioned(
              top: 10,
              right:10,
              child: InkWell(onTap: () {
                
              },
              child: SvgPicture.asset(AppConstants.bookmark,)),
            ),

            Align(alignment: AlignmentGeometry.bottomCenter,
              child: Container(height: 88.61,
              width: double.infinity,
              padding: EdgeInsets.only(left:16, bottom: 13),
                alignment: Alignment.bottomLeft,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin:  Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFF111111),
                      Color.fromRGBO(17, 17, 17, 0.991353),
                      Color.fromRGBO(17, 17, 17, 0.96449),
                      Color.fromRGBO(17, 17, 17, 0.91834),
                      Color.fromRGBO(17, 17, 17, 0.852589),
                      Color.fromRGBO(17, 17, 17, 0.768225),
                      Color.fromRGBO(17, 17, 17, 0.668116),
                      Color.fromRGBO(17, 17, 17, 0.557309),
                      Color.fromRGBO(17, 17, 17, 0.442691),
                      Color.fromRGBO(17, 17, 17, 0.331884),
                      Color.fromRGBO(17, 17, 17, 0.231775),
                      Color.fromRGBO(17, 17, 17, 0.147411),
                      Color.fromRGBO(17, 17, 17, 0.0816599),
                      Color.fromRGBO(17, 17, 17, 0.03551),
                      Color.fromRGBO(17, 17, 17, 0.0086472),
                      Color.fromRGBO(17, 17, 17, 0),
                    ],
                    stops: [
                      0.0,
                      0.066,
                      0.1319,
                      0.1979,
                      0.2638,
                      0.3298,
                      0.3957,
                      0.4617,
                      0.5277,
                      0.5936,
                      0.6596,
                      0.7255,
                      0.7915,
                      0.8574,
                      0.9234,
                      0.9894,
                    ],
                  ),),
                child: Text(label, style: AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color: AppColors.offWhite, letterSpacing: 2),textAlign: TextAlign.left,)),
            ),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Container(height: 30,
               alignment: Alignment.center,
               padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color.fromRGBO(245, 245, 245, 1))
               ),
                child:Text("#Fashion", style: AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color:AppColors.placeholder),)),

                SizedBox(width: 10,),
               Container(height: 30,
               alignment: Alignment.center,
               padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color.fromRGBO(245, 245, 245, 1))
               ),
               child:Text("#Tips", style: AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color:AppColors.placeholder))),
            
              ],
            ),
            Expanded(child: Text("4 days ago", style: AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color: AppColors.placeholder,height: 20/14,),textAlign: TextAlign.end,))
          ],
        )
   
      ],
    );
  }
}