import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key, required this.text, required this.image});
  
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        image,
        width: 300,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
