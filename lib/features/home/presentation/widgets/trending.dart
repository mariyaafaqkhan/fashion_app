import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/core/widgets/label_widegt.dart';
import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  final List<String> labels;
  const Trending({super.key, required this.labels});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("@TRENDING",style: AppTheme.lightTheme.textTheme.titleLarge?.copyWith(color:AppColors.titleActive),),
        Padding(
          padding: const EdgeInsets.only(left:16),
          child: Wrap(spacing: 10,runSpacing: 5,
            children: List.generate(widget.labels.length, (index){
               return LabelWidegt(label:widget.labels[index], isFilled: true,);
            }),
          ),
        ),
      ],
    );
    
    
  }
} 