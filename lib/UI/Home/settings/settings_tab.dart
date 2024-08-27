import 'package:flutter/material.dart';
import 'package:islami/widgits/theme_bottom_sheet.dart';

import '../../../proviver/settings_provider.dart';
import '../../../widgits/language_bottom_sheet.dart';
import '../../app_theme/theme.dart';
import '../../ui_utils.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          Text(appTranslation(context).theme),
          InkWell(
            onTap: () {
              bottomSheetTheme(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: settingsProvider.isDarkModeEnable()
                            ? AppTheme.darkThemeColor
                            : AppTheme.lightThemeColor,
                        width: 2),
                    color: settingsProvider.isDarkModeEnable()
                        ? AppTheme.darkModeColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    settingsProvider.selectedTheme == ThemeMode.light
                        ? appTranslation(context).light
                        : appTranslation(context).dark,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: settingsProvider.isDarkModeEnable()
                              ? AppTheme.darkThemeColor
                              : AppTheme.lightThemeColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(appTranslation(context).language),
          InkWell(
            onTap: () {
              bottomSheetLanguage(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: settingsProvider.isDarkModeEnable()
                            ? AppTheme.darkThemeColor
                            : AppTheme.lightThemeColor,
                        width: 2),
                    color: settingsProvider.isDarkModeEnable()
                        ? AppTheme.darkModeColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    settingsProvider.getSelectedLocalName(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: settingsProvider.isDarkModeEnable()
                            ? AppTheme.darkThemeColor
                            : AppTheme.lightThemeColor),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void bottomSheetTheme(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void bottomSheetLanguage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
