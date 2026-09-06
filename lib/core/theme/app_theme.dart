import 'package:fashion_app/core/constants/app_colors.dart';
import 'package:fashion_app/core/constants/app_fonts.dart';
import 'package:flutter/material.dart';


class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary,
    secondary: AppColors.secondary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.titleActive,
        textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.offWhite,
    ),
  ),
),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.border),
        textStyle:  TextStyle(
    
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 2,color:
  AppColors.titleActive),
      )
    ),
    fontFamily: AppFonts.tenorSans,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 40 / 18,
        letterSpacing: 4,
      ),
     titleMedium: TextStyle(
    
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 2,
  ),
  titleSmall: TextStyle(
     fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 2,
  ),
 bodyLarge: TextStyle(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0,
  ),
  bodyMedium: TextStyle(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
    height: 24 / 14,
    letterSpacing: 0,
  ),
  bodySmall: TextStyle(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    height: 18 / 12,
    letterSpacing: 0,
  ),
    )
  );

}
