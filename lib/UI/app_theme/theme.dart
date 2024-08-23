import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme{
  
  static const Color lightThemeColor = Color(0xffB7935F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightThemeColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 32)
    ),
    dividerTheme:const DividerThemeData(
      color: lightThemeColor,
      thickness: 3,
    )
  );
}