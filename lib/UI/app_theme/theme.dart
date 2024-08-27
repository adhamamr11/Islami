import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme{
  
  static const Color lightThemeColor = Color(0xffB7935F);
  static const Color darkModeColor = Color(0xff141A2E);
  static const Color darkThemeColor = Color(0xffFACC1D);


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

      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: "Messiri",
            color: Colors.black),
        titleMedium: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: "Messiri",
            color: Colors.black),
        titleSmall: TextStyle(fontSize: 20,
            fontFamily: "Messiri",
            color: Colors.black),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontFamily: "Messiri",
            color: Colors.black),
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
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor:lightThemeColor,
    primary: lightThemeColor,
    secondary: Colors.white,
    onPrimary: lightThemeColor,
    onSecondary: Colors.black),
      cardTheme: CardTheme(color: Colors.white),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      iconTheme: IconThemeData(color: lightThemeColor,size: 30)

  );



  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
          )
      ),

      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 35,
        fontWeight: FontWeight.bold,
        fontFamily: "Messiri",
            color: Colors.white),
        titleMedium: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: "Messiri",
            color: Colors.white),
        titleSmall: TextStyle(fontSize: 20,
            fontFamily: "Messiri",
            color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 25,
          fontFamily: "Messiri",
          color: Colors.white),
      ),


      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xff141A2E),
          selectedItemColor: darkThemeColor,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32)
      ),
      dividerTheme:const DividerThemeData(
        color: darkThemeColor,
        thickness: 3,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor:Color(0xff141A2E),
          primary: Color(0xff141A2E),
          secondary: darkThemeColor,
          onPrimary: Color(0xff141A2E),
          onSecondary: Colors.black),
      cardTheme: CardTheme(color: darkModeColor),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkModeColor),
    iconTheme: IconThemeData(color: darkThemeColor,size: 30)
  );
}