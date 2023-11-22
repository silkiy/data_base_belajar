// ignore_for_file: prefer_const_constructors

import 'package:data_base_belajar/controller/auth/auth_google.dart';
import 'package:flutter/material.dart';

import '../../page/auth/login_page.dart';
import '../../page/auth/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        showRegisterPage: toggleScreens,
        onPressed: () => AuthGoogle().signInWithGoogle(),
      );
    } else {
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}
