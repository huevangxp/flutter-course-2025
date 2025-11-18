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
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/appIcon.png',
                fit: BoxFit.contain,
                height: 100,
              ),
              Text('field input login and button', textAlign: TextAlign.center),
              Text('forget pass and signup', textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
