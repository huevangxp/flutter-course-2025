import 'package:flutter/material.dart';
import 'package:course/screens/setting/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    double buttonWidth = screenWidth * 0.5;
    double textFontSize = 18;

    if (screenWidth > 800) {
      // Tablet/Desktop
      textWidth = screenWidth * 0.3;
      buttonWidth = screenWidth * 0.3;
      textFontSize = 24;
    } else if (screenWidth > 500) {
      // Medium devices
      textWidth = screenWidth * 0.4;
      buttonWidth = screenWidth * 0.4;
      textFontSize = 20;
    }

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
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // add card here
              Card(
                elevation: 0,
                // add shadow
                shadowColor: Colors.black,
                // backgound color white
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Introduc(textFontSize: textFontSize),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}

class Introduc extends StatelessWidget {
  const Introduc({
    super.key,
    required this.textFontSize,
  });

  final double textFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // add title 
        Text(
          '',
          style: TextStyle(
            fontSize: textFontSize,
            fontWeight: FontWeight.w700,
          ),
        ),
        // add icon
        const Icon(Icons.settings, color: Colors.teal),
      ],
    );
  }
}
