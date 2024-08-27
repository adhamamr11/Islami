import 'package:flutter/material.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:islami/UI/ui_utils.dart';
import 'package:provider/provider.dart';

import '../proviver/settings_provider.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;
  DefaultScreen(this.body, {super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Stack(
      children: [
        Image.asset(
          getImagePath(settingsProvider.isDarkModeEnable()
              ? "dark_bg.png"
              : "default_bg.png"),
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        body
      ],
    );
  }
}
