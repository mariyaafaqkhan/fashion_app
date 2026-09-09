import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/core/widgets/footer_line.dart';
import 'package:fashion_app/core/widgets/product_widgets.dart';
import 'package:flutter/material.dart';

class JustForYou extends StatefulWidget {
  final List<Map<String,dynamic>> items;
  const JustForYou({super.key, required this.items});

  @override
  State<JustForYou> createState() => _JustForYouState();
}

class _JustForYouState extends State<JustForYou> {
  final ScrollController _controller= ScrollController();
 int position=0;
  @override
  void initState() {
   _controller.addListener(() {
  setState(() {
    if (_controller.offset <=200) {
      position = 0;
    } else if (_controller.offset > 200 &&
               _controller.offset <= _controller.position.maxScrollExtent / 2) {
      position = 1;
    } else if (_controller.offset > _controller.position.maxScrollExtent / 2 &&
               _controller.offset < _controller.position.maxScrollExtent) {
      position = 2;
    } else {
      position = 3;
    }
  });
});

    super.initState();
  }


  @override 
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return  Column(
      
      children: [
        Text("Just for You", style: AppTheme.lightTheme.textTheme.titleLarge?.copyWith(color: AppColors.titleActive),),
        CustomPaint(
       size: Size(124, 9),
      painter: FooterLine(),
     ),
     SizedBox(height: 20,),
     SizedBox(height: 320,
       child: ListView.separated(controller: _controller
        ,padding: EdgeInsets.only(left:20),scrollDirection: Axis.horizontal,itemBuilder: ((context, index) {
        
         return SizedBox(
           width: 200,
           height: 320,
           child: ProductWidgets(
             pI: widget.items[index]["img"],
             pL: widget.items[index]["label"],
             pD: widget.items[index]["Description"],
             pA: widget.items[index]["amount"],
             isLeftAligned: false,
           ),
         );
       }), separatorBuilder:(context , index)=> SizedBox(width: 20,), itemCount: widget.items.length),
     ),
     
    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children :List.generate(widget.items.length,(i) { 
               final bool isSelected= position==i;
                return InkWell(
              onTap: () {
                setState(() {
                  position=i;
                  if(position==0){
                  _controller.jumpTo(0);
                  } else if(position==1){
                     _controller.jumpTo(_controller.position.maxScrollExtent / 3);
                  }else if(position==2){
                   _controller.jumpTo(2*_controller.position.maxScrollExtent/3); 
                  }else{
                    _controller.jumpTo(3*_controller.position.maxScrollExtent/3); 
                  }
                 
                 
                });
              },
              child: Transform.rotate(
                angle: 0.78,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 5.66,width:5.66, 
                  decoration: BoxDecoration(
                    border: Border.all(color: !isSelected?AppColors.placeholder :Colors.transparent, width: 0.5),
                    color:isSelected?AppColors.placeholder :Colors.transparent
                    ),
                  ),
              )
                );}
                ),),
                 ],
    );
  }
}