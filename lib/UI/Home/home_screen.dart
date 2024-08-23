import 'package:flutter/material.dart';
import 'package:islami/UI/Home/hadeth/hadeth_tab.dart';
import 'package:islami/UI/Home/quran/quran_tab.dart';
import 'package:islami/UI/Home/radio/radio_tab.dart';
import 'package:islami/UI/Home/sebha/sebha_tab.dart';
import 'package:islami/UI/default_screen.dart';
import 'package:islami/UI/ui_utils.dart';
import 'package:islami/widgits/nav_bar.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen( Scaffold(
      appBar: AppBar(title: Text("Islami"),),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            selectedIndex = index;
            setState(() {
            });
          },
          currentIndex:selectedIndex,
          items: [
            BottomBar("icon_quran.png", "Quran"),
            BottomBar("icon_hadeth.png", "Hadeth"),
            BottomBar("icon_sebha.png", "Sebha"),
            BottomBar("icon_radio.png", "Radio"),
          ]
      ),
    ),);
  }
}
var tabs = [
  QuranTab(),HadethTab(),SebhaTab(),RadioTab()
];
