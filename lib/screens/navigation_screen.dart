import 'package:course/screens/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  // List of pages to display
  final List<Widget> _pages = const [
    HomePage(), // ✅ FIXED
    Center(child: Text('About Page')),
    Center(child: Text('Profile Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ໜ້າຫຼັກ'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'ກ່ຽວກັບເຮົາ'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ໂປຼມໄຟສ໌'),
        ],
      ),
    );
  }
}
