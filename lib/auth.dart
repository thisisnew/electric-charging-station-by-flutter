import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(
          "환영합니다!",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
