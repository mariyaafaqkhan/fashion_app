import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppColors.headerColor,
      toolbarHeight: 60,
      leadingWidth: 70,
      leading: InkWell(child: SvgPicture.asset(AppConstants.menuIcon, height: 24,fit: BoxFit.scaleDown,)),
      title: SvgPicture.asset(AppConstants.logo, height: 32,),
      centerTitle: true,
      actions: [InkWell(child: SvgPicture.asset(AppConstants.searchIcon, height: 24,)),
      SizedBox(width: 16,),
      InkWell(child: SvgPicture.asset(AppConstants.shoppingBagIcon, height: 24,))],
      actionsPadding: EdgeInsets.only(right: 23),
    );
      
  }
}