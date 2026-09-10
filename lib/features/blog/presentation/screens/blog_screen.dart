import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/constants/app_strings.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/core/widgets/footer_line.dart';
import 'package:fashion_app/core/widgets/footer_widget.dart';
import 'package:fashion_app/core/widgets/header_widget.dart';
import 'package:fashion_app/features/blog/presentation/screens/blog_post_screen.dart';
import 'package:fashion_app/features/blog/presentation/widgets/blog_list_content_container.dart';
import 'package:fashion_app/features/blog/presentation/widgets/filter_chips.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final List<Map<String,dynamic>> items=[
{
  "img":AppConstants.bIcon1,
  "label":"2021 Style Guide: The Biggest Fall Trends"
},
{
  "img":AppConstants.bIcon2,
  "label":"2021 Style Guide: The Biggest Fall Trends"
},
{
  "img":AppConstants.bIcon3,
  "label":"2021 Style Guide: The Biggest Fall Trends"
},
{
  "img":AppConstants.bIcon4,
  "label":"2021 Style Guide: The Biggest Fall Trends"
}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(255, 255, 255, 1),
      body: CustomScrollView(
        slivers: [
          HeaderWidget(hc:Color.fromRGBO(255, 255, 255, 1)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top:20),
              child: Center(child: Text("BLOG", style: AppTheme.lightTheme.textTheme.titleLarge?.copyWith(color: AppColors.titleActive),)),
            )),
          
          SliverToBoxAdapter(
            child: Center(
              child: CustomPaint(
                size: Size(125, 10),
                painter: FooterLine(),
              ),
            ),
          ),
         SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left:4, bottom :10),
            child: SizedBox(height: 32,
              child: ListView.builder(scrollDirection: Axis.horizontal, shrinkWrap: true,itemCount:AppStrings.blogFilterChipsData.length ,itemBuilder: (context, index){
              final chip=AppStrings.blogFilterChipsData[index];
               return Padding(
                 padding: EdgeInsets.only(left:12,right:12),
                 child: FilterChips(label:chip ),
               );
              }),
            ),
          ),
         ),

         SliverList.builder(itemCount: items.length,itemBuilder: ((context, index) {
           return Padding(
             padding: const EdgeInsets.only(left: 16, right:16, bottom:16, top:16),
             child: InkWell(onTap:() {
               Navigator.push(context, MaterialPageRoute(builder: (context){
                return BlogPostScreen(data:{});
               }));
             },
              child: BlogListContentContainer(img: items[index]["img"], label: items[index]["label"])),
           );
         })),

         SliverToBoxAdapter(
          child: Container(height: 48,
            margin: EdgeInsets.only(left:82,right:82, top:17, bottom: 34),
            padding: EdgeInsets.only(top:12, bottom: 12),
            decoration: BoxDecoration(
              border: Border.all(color:AppColors.border)
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LOAD MORE", style: AppTheme.lightTheme.textTheme.bodyLarge?.copyWith(color: AppColors.titleActive, letterSpacing: 0),),
                SizedBox(width: 16,),
                SvgPicture.asset(AppConstants.plusIcon, height: 24, width:24, fit: BoxFit.scaleDown,)
              ],
            ),
          ),
         ),
          SliverFillRemaining(
                hasScrollBody: false,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FooterWidget(),
                  ],
                ) ,
               ),


        ],
      ),
    );
  }
}