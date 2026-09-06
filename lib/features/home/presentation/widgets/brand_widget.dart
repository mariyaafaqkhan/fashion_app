import 'package:fashion_app/core/widgets/footer_line.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BrandWidget extends StatelessWidget {
  final List<String> bL;
  const BrandWidget({super.key, required this.bL});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 9,
      children: [
        CustomPaint(
          size: Size(124, 9),
          painter: FooterLine(),
        ),
        GridView.builder(shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 30, right: 30),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.9), itemBuilder: (context, index){
          return SvgPicture.asset(bL[index],fit: BoxFit.scaleDown,);
        }, itemCount: bL.length,),

        CustomPaint(
          size: Size(124, 9),
          painter: FooterLine(),
        ),
      ],
    );
  }
}