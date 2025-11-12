import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/appIcon.png', fit: BoxFit.contain),
        ),
        title: const Text(
          'ຕັ້ງຄ່າ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
                Card(
                    color: Colors.white,
                    elevation: 0,
                    child: ListTile(
                    leading: const Icon(Icons.settings, color: Colors.teal),
                    title: const Text('ຕັ້ງຄ່າ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'NotoSansLao'),),
                    
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
