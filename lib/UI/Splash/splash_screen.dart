import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/UI/Home/home_screen.dart';

import '../ui_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        HomeScreen.routeName,
            (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset(getImagePath("splash.png"),
          fit: BoxFit.cover,
        height: double.infinity,),
    );
  }
}
