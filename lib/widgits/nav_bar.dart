import 'package:flutter/material.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:islami/UI/ui_utils.dart';

class BottomBar extends BottomNavigationBarItem {
  BottomBar(String title,Color backgroundColor,{String? iconPath,Icon? mainIcon})
      : super(icon: mainIcon != null ? mainIcon  : ImageIcon(AssetImage(getImagePath(iconPath!))),
    label: title,
    backgroundColor: backgroundColor
  );

}