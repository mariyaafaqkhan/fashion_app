import 'package:fashion_app/core/theme/app_theme.dart';
import 'package:fashion_app/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OPEN FASHION',
      
      home: HomeScreen(),
    );
  }
}

