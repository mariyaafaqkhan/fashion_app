import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FilterChips extends StatefulWidget {
  final String label;
  const FilterChips({super.key, required this.label});

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 32,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(30),
        
      ),
      child: Text(widget.label, style: AppTheme.lightTheme.textTheme.titleSmall?.copyWith(color: AppColors.body, height: 16/14,letterSpacing: 0.01),) ,
    );
  }
}