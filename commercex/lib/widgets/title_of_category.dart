import 'package:flutter/material.dart';

class SectionTitile extends StatelessWidget {
  const SectionTitile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style:const  TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'See More',
                  style: TextStyle(
                      color: Color.fromARGB(255, 175, 174, 174),
                      fontWeight: FontWeight.bold),
                )
              ],
            );
  }
}