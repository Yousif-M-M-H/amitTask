import 'package:commercex/widgets/app_bar_icon.dart';
import 'package:commercex/widgets/appbar_textfiled.dart';
import 'package:commercex/widgets/category_widget.dart';
import 'package:commercex/widgets/featured_products.dart';
import 'package:commercex/widgets/title_of_category.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final tabs = [

  ];
  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/images/pc2.png',
      'assets/images/phones.png',
      'assets/images/clothes.jpeg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const MyAppBarTextField(),
        actions: const [
          MyAppBarIcon(icon: Icons.shopping_cart_outlined),
          MyAppBarIcon(icon: Icons.notifications_active_outlined)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitile(title: 'Special for you'),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return MyCategory(text: 'Computer', image: images[index]);
                  },
                ),
              ),
              const SizedBox(height: 20),
              const SectionTitile(title: 'Featured Products'),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FeaturedProductCard(image: images[index]),
                    );
                  },
                ),
              ),
              const SectionTitile(title: 'Best Selling Products'),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FeaturedProductCard(image: images[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
// bottomNavigationBar: BottomNavigationBar(
//   type: BottomNavigationBarType.fixed,
//   elevation: 3,
//   backgroundColor: Colors.white,
//   onTap: (index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   },
//     items: const[
//     BottomNavigationBarItem( icon: Icon(Icons.home ,color: Colors.black,), label: 'Search'),
//     BottomNavigationBarItem( icon: Icon(Icons.category ,color: Colors.black,), label: 'Favorites'),
//     BottomNavigationBarItem( icon: Icon(Icons.details_sharp ,color: Colors.black,), label: 'Profile'),
//   ], 
// ),
    );
  }
}
