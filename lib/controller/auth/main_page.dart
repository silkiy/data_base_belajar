// ignore_for_file: prefer_const_constructors

import 'package:data_base_belajar/controller/auth/auth_page.dart';
import 'package:data_base_belajar/page/landing_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LandingPage();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
