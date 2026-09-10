import 'package:fashion_app/core/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class BlogPostScreen extends StatefulWidget {
  final Map<String,dynamic> data;
  const BlogPostScreen({super.key, required this.data});

  @override
  State<BlogPostScreen> createState() => _BlogPostScreenState();
}

class _BlogPostScreenState extends State<BlogPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HeaderWidget(),
        ],
      ),
    );
  }
}