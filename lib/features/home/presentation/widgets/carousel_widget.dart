import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CarouselWidget extends StatefulWidget {
  final int itemCounts;
  final List<String> imgs;
  final String label;
  final String label1;


  const CarouselWidget({super.key, required this.itemCounts, required this.imgs, required this.label, required this.label1});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  
  final PageController _controller=PageController(initialPage: 0
  );
 @override
  void dispose() {
   
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    
   return SizedBox(height:600,
   width:double.infinity,
   child: PageView.builder(
    controller: _controller,
    
    itemCount:widget.itemCounts,
    itemBuilder: (context,index){
    int  position=index;
      
      final img= widget.imgs[index];

      return Stack(
        children: [
          CarouselItem(img: img,label: widget.label, label1: widget.label1, itemCount: index,),
          Positioned(
            bottom: 18,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children :List.generate(widget.itemCounts,(i) { 
               final bool isSelected= position == i;
                return GestureDetector(
              onTap: () {
                setState(() {
                  
                  
                 
                });
              },
              child: Transform.rotate(
                angle: 0.78,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 5.66,width:5.66, 
                  decoration: BoxDecoration(
                    border: Border.all(color: !isSelected?AppColors.offWhite :Colors.transparent, width: 0.5),
                    color:isSelected?AppColors.offWhite :Colors.transparent
                    ),
                  ),
              )
                );}
                ),),
                ),
        ],
      );
   },

   ),
   );
  }
}
class CarouselItem extends StatefulWidget {
  final String img;
  final String label;
  final String label1;
  final int itemCount;
  const CarouselItem({super.key, required this.img, required this.label, required this.label1, required this.itemCount,});

  @override
  State<CarouselItem> createState() => _CarouselItemState();
}

class _CarouselItemState extends State<CarouselItem> {
  
  @override
  Widget build(BuildContext context) {
   
    return Container(
      
     color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(child: Image.asset(widget.img, height:600, fit: BoxFit.cover,)),
           Align(
            alignment: AlignmentGeometry.centerStart,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
             
              children: [
                Padding(padding: EdgeInsetsGeometry.only(left: 42.4),
                  child: Text(widget.label.split(" ").first,style:TextStyle(fontFamily: "Bodoni Moda 28pt",color: AppColors.body,fontSize: 38,height: 43.49/38, letterSpacing: 1.21,fontWeight: FontWeight.w700),
                  )),
                Padding(padding: EdgeInsetsGeometry.only(left: 60.4),
                  child: Text(widget.label.split(" ")[1],style:TextStyle(color: AppColors.body,fontSize: 38,height: 43.49/38, letterSpacing: 1.21,fontWeight: FontWeight.w700),)),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 36.4),
                  child: Row(
                    children: [Text(widget.label.split(" ")[2],style:TextStyle(color: AppColors.body,fontSize: 38,height: 43.49/38, letterSpacing: 1.21,fontWeight: FontWeight.w700),),
                   
                      Text(widget.label.split(" ").last,style:TextStyle(color: AppColors.body,fontSize: 38,height: 43.49/38, letterSpacing: 1.21,fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
            Positioned(
            bottom:40,
            left:90,
            right: 90,
           
            
           
            
            child: Center(
              child: Container(height:40,
              
              padding: EdgeInsets.only(left:30, right:30,top:8,bottom: 8),
              decoration: BoxDecoration(
              
                color:Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(widget.label1, style: AppTheme.lightTheme.textTheme.bodyLarge?.copyWith(color:AppColors.offWhite,),),),
            ),

          ),

          
          


        ],
      )
    );
  }
}