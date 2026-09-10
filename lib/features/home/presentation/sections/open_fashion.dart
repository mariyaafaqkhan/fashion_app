import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/core/widgets/footer_line.dart';
import 'package:fashion_app/features/home/presentation/widgets/open_fashion_widget.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class OpenFashion extends StatelessWidget {
  final List<Map<String,dynamic>>list;
  const OpenFashion({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
   
    return Container(
       color: Color.fromRGBO(242, 242, 242, 1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20,),
          SvgPicture.asset(AppConstants.logo, height: 40,),
          Padding(
            padding: const EdgeInsets.only(left:44,right:44, top:16),
            child: Text("Making a luxurious lifestyle accessible for a generous group of women is our daily drive.", textAlign: TextAlign.center, style: AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color:AppColors.label, letterSpacing: 0.01,height: 1.5),),
          ),
           SizedBox(height: 10,),
           CustomPaint(
         size: Size(124, 9),
        painter: FooterLine(),
       ),
       SizedBox(height: 10,),
         GridView.builder(shrinkWrap: true, padding: EdgeInsets.only(right:20, left:20),itemCount: list.length,physics: NeverScrollableScrollPhysics(),gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.7, crossAxisSpacing: 10, ) , itemBuilder: (context, index){
           return OpenFashionWidget(img: list[index]["img"], label: list[index]["label"]);
           }),
        SizedBox(height: 20,),
         SvgPicture.asset(AppConstants.designIcon),
         SizedBox(height: 20,),
        ],
      ),
    );
  }
}