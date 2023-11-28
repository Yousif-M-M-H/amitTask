import 'package:commercex/pages/categories.dart';
import 'package:commercex/pages/home_page.dart';
import 'package:commercex/pages/product_detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    const MyHomePage(),
    const MyCategoryScreen(),
    const ProductDetailsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 3,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items:  [
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.black87,
              ),
              label: _currentIndex == 0  ? 'Home' : ''),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.category,
                color: Colors.black,
              ),
              label: _currentIndex == 1 ? 'Category' : ''),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              label: _currentIndex == 2 ? 'Details' : ''),
        ],
      ),
    );
  }
}
