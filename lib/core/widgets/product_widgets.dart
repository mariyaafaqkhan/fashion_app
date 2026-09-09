import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProductWidgets extends StatefulWidget {
  final String pI;
  final String pL;
  final String pD;
  final String pA;
  final String pR;
  final List<String> pS;
  final String pQ;
  final List<Color> pC;
  final bool isBookmarked;
  final bool isLeftAligned;
  final bool isAmountAligned;
  final bool isRated;
  final bool isCartP;
  final bool isColored;
  final bool isResized;
  final String resizeIcon;
  final String downloadIcon;
  

  const ProductWidgets({super.key, required this.pI, required this.pL, required this.pD, required this.pA, this.pR="", this.pS=const [],  this.isBookmarked=false, this.isLeftAligned= true, this.pQ="", this.pC=const [],  this.isRated=false,  this.isCartP=false,  this.isColored=false, this.isResized=false, this.resizeIcon="",  this.downloadIcon="",  this.isAmountAligned=false});

  @override
  State<ProductWidgets> createState() => _ProductWidgetsState();
}

class _ProductWidgetsState extends State<ProductWidgets> {
  @override
  Widget build(BuildContext context) {
    return widget.isLeftAligned ?( widget.isRated || widget.isCartP)? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(widget.pI, width:100, height:133, fit :BoxFit.cover),
        SizedBox(width: 11,),
        Column(
          children: [
            Text(widget.pL, style:AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color:AppColors.titleActive),),
            Text(widget.pD, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.label),),
            if(widget.isCartP)...[
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                     
                      shape: BoxShape.circle,
                      border: Border.all(color:Color.fromRGBO(196, 196, 196, 1)),
                    ),
                    child: Center(child:Icon(Icons.remove, color:AppColors.label, size: 16,),),
                  ),
                  Text(widget.pQ, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.label, fontSize: 14, height: 14/14 ),),
                Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      
                      shape: BoxShape.circle,
                      border: Border.all(color:Color.fromRGBO(196, 196, 196, 1)),
                    ),
                    child: Center(child:Icon(Icons.add, color:AppColors.label, size: 16,),),
                  ),
                ]
              ),
            ],
            Row(
              children: [
                Text("\$"),
                Text(widget.pA, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.primary, fontSize: 15, height: 24/15 ),),

              ],
            ),
            if(widget.isRated)...[
            Row(
              children: [
                Icon(Icons.star, color:AppColors.primary, size: 13.5,),
                SizedBox(width: 4,),
                Text("${widget.pR} Ratings", style:AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color:AppColors.label, height: 14/12 ),),],
            ),
Row(children: [
  Text("Size", style:AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color:AppColors.label, height: 14/12 ),),
  Expanded(child: SizeWidget(sizes: widget.pS, isColored: false, colors: widget.pC,)),
  if(widget.isBookmarked) IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color:AppColors.primary, size: 16,),),
  
  
  ],
      
               
),]
          ],
        ),
      ],

    ):Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Stack(
           children: [
             Image.asset(widget.pI,  height:220, fit :BoxFit.cover),
              if(widget.isBookmarked)
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color:AppColors.primary, size: 16,),),
              )
              else if(widget.isResized)
              Align(
                alignment: Alignment.bottomRight, 
                child: Container(decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.titleActive),
                  child: SvgPicture.asset(widget.resizeIcon, width: 16, height: 16,)),),
                
           ],
         ),
         Text(widget.pL, style:AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color:AppColors.titleActive),),
            if(widget.isAmountAligned)...[
            Row(
              children: [
                Text(widget.pD, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.label),),
               
                Row(
              children: [
                Text("\$"),
                Text(widget.pA, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.primary, fontSize: 15, height: 24/15 ),),

              ],
            ),
              ],
            ),],
             if(!widget.isAmountAligned)...[
              Text(widget.pD, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.label),),
               
              Row(
              children: [
                Text("\$"),
                Text(widget.pA, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.primary, fontSize: 15, height: 24/15 ),),

              ],
            ),]
           

      ]
    ): Column(
     mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(widget.pI, width: double.infinity, height:241, fit :BoxFit.cover),
        //Text('${widget.pL} ${widget.pD}', style:AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color:AppColors.titleActive),),
          Text('${widget.pL} ${widget.pD}', style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.label),textAlign: TextAlign.center,
          softWrap: true,maxLines: 2,
          ),
           Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$",  style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.primary, fontSize: 15, height: 24/15 )),
                Text(widget.pA, style:AppTheme.lightTheme.textTheme.bodyMedium?.copyWith(color:AppColors.primary, fontSize: 15, height: 24/15 ),),

               
      ],),]
    );
  }
}

class SizeWidget extends StatefulWidget {
  final List<String> sizes;
  final bool isColored;
  final List<Color> colors;
  

  const SizeWidget({
    required this.sizes,
    required this.isColored,
    required this.colors,
   
  });

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex=0;

    final bool isSelected = selectedIndex == 0;
    return Row(
      children: [
        for(int i=0; i<widget.sizes.length; i++)
          GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = i;
            });
            // Handle size selectionse
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
             color:isSelected && !widget.isColored? AppColors.body:null,
              shape: BoxShape.circle,
              border:isSelected?(widget.isColored? Border.all(color: AppColors.placeholder):null):(widget.isColored? null: Border.all(color: AppColors.border)),
            ),
            child: Center(child:widget.isColored? Container(height:isSelected ? 16 : null,width:isSelected ? 16 : null,color: widget.colors[i]):Text(widget.sizes[i], style:AppTheme.lightTheme.textTheme.bodySmall?.copyWith(color:isSelected?AppColors.inputBackground:AppColors.label,height: 12/10 , fontSize: 10),)),
          ),
        ),
      SizedBox(width: 6,),
    ],
  );
}}