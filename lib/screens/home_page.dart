// import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:course/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:course/screens/setting/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'ເຂົ້າ'; // Track selected category

  void _onSettingsPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive widths
    double textWidth = screenWidth * 0.5;
    double textFontSize = 18;

    if (screenWidth > 800) {
      // Tablet/Desktop
      textWidth = screenWidth * 0.3;
      textFontSize = 24;
    } else if (screenWidth > 500) {
      // Medium devices
      textWidth = screenWidth * 0.4;
      textFontSize = 20;
    }

    List<String> list = [
      // image url
      'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
      'https://cdn.pixabay.com/photo/2022/08/26/00/07/bird-7411459_1280.jpg',
      'https://cdn.pixabay.com/photo/2023/06/01/13/07/annas-hummingbird-8033578_1280.jpg',
    ];

    List<String> categoryList = ['ເຂົ້າ', 'ນ້ຳ', 'ເຫຼືອ', 'ເກີດ'];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/appIcon.png', fit: BoxFit.contain),
        ),
        title: const Text(
          'ໜ້າຫຼັກ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            tooltip: 'Settings',
            onPressed: _onSettingsPressed,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Image slider
              ImageSlicde(screenHeight, list),
              const SizedBox(height: 16),
              Category(categoryList),
              const SizedBox(height: 16),
              Row(children: [Text('ການອອກຈາກລະບົບ'), Icon(Icons.logout)]),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox Category(List<String> categoryList) {
    return SizedBox(
      height: 35, // Fixed height for the horizontal list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          bool isSelected = categoryList[index] == selectedCategory;
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = categoryList[index];
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.teal : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.teal, width: 1),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.category,
                      color: isSelected ? Colors.white : Colors.teal,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      categoryList[index],
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.teal,
                        fontSize: 16,
                        fontWeight: isSelected
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Card ImageSlicde(double screenHeight, List<String> list) {
    return Card(
      elevation: 0, // Add shadow depth
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior:
          Clip.antiAlias, // ensures child is clipped to the rounded border
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: screenHeight * 0.20,
          viewportFraction: 1, // image fills the entire card
          enlargeCenterPage: true,
        ),
        items: list
            .map(
              (item) => Container(
                width: double.infinity,
                child: Image.network(item.toString(), fit: BoxFit.cover),
              ),
            )
            .toList(),
      ),
    );
  }
}
