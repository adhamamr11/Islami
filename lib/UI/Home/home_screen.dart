import 'package:flutter/material.dart';
import 'package:islami/UI/Home/hadeth/hadeth_tab.dart';
import 'package:islami/UI/Home/quran/quran_tab.dart';
import 'package:islami/UI/Home/radio/radio_tab.dart';
import 'package:islami/UI/Home/sebha/sebha_tab.dart';
import 'package:islami/UI/Home/settings/settings_tab.dart';
import 'package:islami/UI/app_theme/theme.dart';
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
    return DefaultScreen(
      Scaffold(
        appBar: AppBar(
            title: Text(
          appTranslation(context).appTitle,
          style: Theme.of(context).textTheme.titleLarge,
        )),
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            currentIndex: selectedIndex,
            items: [
              BottomBar(appTranslation(context).quranTab,
                  Theme.of(context).colorScheme.primary,
                  iconPath: "icon_quran.png"),
              BottomBar(appTranslation(context).hadethTab,
                  Theme.of(context).colorScheme.primary,
                  iconPath: "icon_hadeth.png"),
              BottomBar(appTranslation(context).sebbhaTab,
                  Theme.of(context).colorScheme.primary,
                  iconPath: "icon_sebha.png"),
              BottomBar(appTranslation(context).radioTab,
                  Theme.of(context).colorScheme.primary,
                  iconPath: "icon_radio.png"),
              BottomBar(appTranslation(context).settingsTab,
                  Theme.of(context).colorScheme.primary,
                  mainIcon: Icon(Icons.settings))
            ]),
      ),
    );
  }
}

var tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab(), SettingsTab()];
