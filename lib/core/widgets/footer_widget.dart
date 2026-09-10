import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/core/widgets/footer_line.dart';
import 'package:fashion_app/features/blog/presentation/screens/blog_screen.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             SvgPicture.asset(AppConstants.xIcon),
             SvgPicture.asset(AppConstants.instaIcon),
             SvgPicture.asset(AppConstants.youtubeIcon),
            ],
          ),
          SizedBox(height: 20,),
          CustomPaint(
            size: Size(124, 9),
            painter:FooterLine() ,
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              _footerText("support@openui.design"),
              _footerText("+60 825 876"),
              _footerText("08:00 - 22:00 - Everyday"),
            ],
          ),
            SizedBox(height: 20,),
          CustomPaint(
            size: Size(124, 10),
            painter:FooterLine() ,
          ),
          SizedBox(height: 14,),
       Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
      _footerText("About"),
      _footerText("Contact"),
      InkWell(onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=> BlogScreen() ));
      },
        child: _footerText("Blog")),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            color: AppColors.containerColor,
            child: Text("Copyright© OpenUI All Rights Reserved.", style: AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color: AppColors.label),),
          )
        ],
      ),
    );
  }
}

Widget _footerText (String value) {
  return Text(
    value, style: AppTheme.lightTheme.textTheme.bodyLarge?.copyWith(color: AppColors.body),
  );
}

