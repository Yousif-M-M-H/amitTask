import 'package:flutter/material.dart';

class SizesCard extends StatelessWidget {
  const SizesCard({super.key, required this.number});
final int number;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(number.toString()),
      ),
    );
  }
}
