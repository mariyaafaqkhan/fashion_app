import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_constants.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/core/widgets/footer_line.dart';
import 'package:fashion_app/core/widgets/product_widgets.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class NewArrivalSection extends StatefulWidget {
  final String tl;
  final List<String> tbl;
  final String bl;
   final List<Map<String, dynamic>> items;
  const NewArrivalSection({super.key, required this.tl, required this.tbl, required this.items, required this.bl});

  @override
  State<NewArrivalSection> createState() => _NewArrivalSectionState();
}

class _NewArrivalSectionState extends State<NewArrivalSection> {
  int position=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     Text(widget.tl, style: AppTheme.lightTheme.textTheme. titleLarge?.copyWith(letterSpacing: 4,height:1.7, color: AppColors.titleActive),),
     CustomPaint(
       size: Size(124, 9),
      painter: FooterLine(),
     ),
     Padding(
       padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.15,top:20),
       child: SizedBox(height:29,
         child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: ((context, index){ 
          final isSelected= position==index;
          return GestureDetector(onTap: () {
            setState(() {
              position=index;
            });
          },
            child: FilterTab(label: widget.tbl[index], isSelected: isSelected));}), separatorBuilder: (context, index)=> SizedBox(width: 26,), itemCount: widget.tbl.length),
       ),
     ),
       GridView.builder(itemCount:widget.items.length,
       shrinkWrap: true,
       physics: NeverScrollableScrollPhysics(),
       padding: EdgeInsets.only(top:11, left:10, right:10),
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
       mainAxisSpacing: 0,
       crossAxisSpacing: 4,
       childAspectRatio: 0.63), 
       itemBuilder: ((context, index) {
        final image= widget.items[index]["img"];
        final label= widget.items[index]["label"];
        final desc= widget.items[index]["Description"];
        final amount= widget.items[index]["amount"];
       
         return ProductWidgets(pI: image, pL:label , pA: amount, pD: desc,isLeftAligned: false,);
       })),
       SizedBox(height: 30,),
       Row(mainAxisAlignment: MainAxisAlignment.center,
       spacing: 5,
         children: [
           Text(widget.bl, style: AppTheme.lightTheme.textTheme.titleMedium?.copyWith(color:AppColors.titleActive,height: 24/16),),
           SvgPicture.asset(AppConstants.forwardArrowIcon, height: 18,width: 18,)
         ],
       ),
      ],
    );
  }
}

class FilterTab extends StatefulWidget {
  final String label;
  final bool isSelected;
  const FilterTab({super.key, required this.label, required this.isSelected});

  @override
  State<FilterTab> createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.label, textAlign: TextAlign.justify, style: AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color:widget.isSelected? AppColors.titleActive: AppColors.placeholder, letterSpacing: 0.01, height:1.3),),
        if(widget.isSelected)...[
          SizedBox(height:4),
         Transform.rotate(
                angle: 0.78,
                child: Container(
                 
                  height: 5.66,width:5.66, 
                  decoration: BoxDecoration(
                    color:widget.isSelected?AppColors.primary :null,
                    ),
                  ),
              )]
      ],
    );
  }
}