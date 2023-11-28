import 'package:flutter/material.dart';

class MyAppBarIcon extends StatelessWidget {
  const MyAppBarIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0), 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), 
            spreadRadius: 0.5, 
            blurRadius: 2, 
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
      bottomLeft: Radius.circular(12),
      bottomRight: Radius.circular(20),
    ),
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(icon ,color: Colors.purple, size: 25,),
    ),
  ),
    );
  }
}
