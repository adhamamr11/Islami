import 'package:flutter/material.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:islami/UI/ui_utils.dart';

class BottomBar extends BottomNavigationBarItem {
  BottomBar(String iconPath,String title) : super(icon: ImageIcon(AssetImage(getImagePath(iconPath))),
    label: title,
    backgroundColor: AppTheme.lightThemeColor
  );

}