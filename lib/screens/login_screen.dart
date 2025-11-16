import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('icon company'),
            Text('field input login and button'),
            Text('forget pass and signup')
          ],
        )
      )
    );
  }
}