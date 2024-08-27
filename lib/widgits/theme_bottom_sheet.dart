import 'package:flutter/material.dart';
import 'package:islami/UI/ui_utils.dart';
import 'package:islami/proviver/settings_provider.dart';

import '../UI/app_theme/theme.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: settingsProvider.isDarkModeEnable()
                  ? getUnSelectedTheme(context, appTranslation(context).light)
                  : getSelectedTheme(context, appTranslation(context).light,
                      settingsProvider)),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: settingsProvider.isDarkModeEnable()
                  ? getSelectedTheme(
                      context, appTranslation(context).dark, settingsProvider)
                  : getUnSelectedTheme(context, appTranslation(context).dark))
        ],
      ),
    );
  }

  Widget getSelectedTheme(BuildContext context, String theme, SettingsProvider provider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(theme,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: provider.isDarkModeEnable()
                      ? AppTheme.darkThemeColor
                      : AppTheme.lightThemeColor,
                )),
        Icon(
          Icons.check,
          color: provider.isDarkModeEnable()
              ? AppTheme.darkThemeColor
              : AppTheme.lightThemeColor,
        )
      ],
    );
  }

  Widget getUnSelectedTheme(BuildContext context, String theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(theme, style: Theme.of(context).textTheme.bodyMedium)],
    );
  }
}
