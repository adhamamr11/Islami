import 'package:flutter/material.dart';
import 'package:islami/proviver/settings_provider.dart';

import '../UI/app_theme/theme.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

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
                settingsProvider.changeLanguage("en");
                Navigator.pop(context);
              },
              child: settingsProvider.selectedLocal == "en"
                  ? getSelectedLanguage(context, "English",settingsProvider)
                  : getUnSelectedLanguage(context, "English")),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: settingsProvider.selectedLocal == "ar"
                  ? getSelectedLanguage(context, "العربية",settingsProvider)
                  : getUnSelectedLanguage(context, "العربية"))
        ],
      ),
    );
  }

  Widget getSelectedLanguage(BuildContext context, String language,SettingsProvider provider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: provider.isDarkModeEnable()? AppTheme.darkThemeColor:AppTheme.lightThemeColor,
                )),
        Icon(
          Icons.check,
          color: provider.isDarkModeEnable()? AppTheme.darkThemeColor:AppTheme.lightThemeColor,
        )
      ],
    );
  }

  Widget getUnSelectedLanguage(BuildContext context, String language) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(language, style: Theme.of(context).textTheme.bodyMedium)],
    );
  }
}
