import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/features/home/presentation/widgets/follow_us_widget.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class FollowUsSection extends StatelessWidget {
  final List<Map<String,dynamic>> items;
  const FollowUsSection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("FOLLOW US", style: AppTheme.lightTheme.textTheme. titleLarge?.copyWith(color: AppColors.titleActive),),
        SizedBox(height: 10,),
        SvgPicture.asset(AppConstants.instaIcon1),
        SizedBox(height: 18,),
        GridView.builder(physics: NeverScrollableScrollPhysics(),padding: EdgeInsets.only(left:16,right:16),shrinkWrap: true,itemCount: items.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1,crossAxisSpacing: 16, mainAxisSpacing: 16), itemBuilder: (context, index){
            return FollowUsWidget(img: items[index]["img"], label: items[index]["label"]);
        })
      ],
    );
  }
}