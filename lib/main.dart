import 'package:flutter/material.dart';
import 'package:islami/UI/Home/home_screen.dart';
import 'package:islami/UI/Home/quran/surah_contant.dart';
import 'package:islami/UI/Splash/splash_screen.dart';
import 'package:islami/UI/app_theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_)=> SplashScreen(),
        HomeScreen.routeName : (_)=> HomeScreen(),
        SurahContant.routeName : (_)=> SurahContant()
      },
      theme: AppTheme.lightTheme,

    );
  }
}

