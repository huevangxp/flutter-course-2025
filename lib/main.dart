// import 'package:course/screens/setting/screen.dart';
import 'package:flutter/material.dart';
import 'package:course/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: 'NotoSansLao',
        bannerTheme: MaterialBannerThemeData(
          backgroundColor: Colors.teal,
          contentTextStyle: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),

      // Define named routes
      home: const HomePage(),
    );
  }
}
