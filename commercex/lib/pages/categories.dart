import 'package:commercex/widgets/appbar_textfiled.dart';
import 'package:commercex/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class MyCategoryScreen extends StatelessWidget {
  const MyCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/images/pc2.png',
      'assets/images/phones.png',
      'assets/images/clothes.jpeg'
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: MyAppBarTextField(),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 0),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return SizedBox(
                  height: 150,
                  child: MyCategory(text: 'Computer', image: images[index]));
            },
          ),
        ],
      ),
    );
  }
}
