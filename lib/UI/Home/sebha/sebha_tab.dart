import 'package:flutter/material.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:islami/UI/ui_utils.dart';
import 'package:islami/proviver/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehCounter = 0;
  List<String> tasbehcontant = ["سبحان الله", "الحمدلله", " الله اكبر"];
  int index = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Image.asset(settingsProvider.isDarkModeEnable()?getImagePath("head_sebha_dark.png") :getImagePath("head_sebha_logo.png")),
          InkWell(
            onTap: () {
              tasbehMode();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Transform.rotate(
                  angle: angle,
                  child: Image.asset(settingsProvider.isDarkModeEnable() ? getImagePath("body_sebha_dark.png") : getImagePath("body_sebha_logo.png"))),
            ),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
        Text(
          appTranslation(context).tasbehNumber,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            width: 70,
            height: 80,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color:settingsProvider.isDarkModeEnable() ? AppTheme.darkModeColor : AppTheme.lightThemeColor,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              tasbehCounter.toString(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Center(
          child: Container(
            width: 160,
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: settingsProvider.isDarkModeEnable() ? AppTheme.darkThemeColor : AppTheme.lightThemeColor,
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              tasbehcontant[index],
              textAlign: TextAlign.center,
              style: TextStyle(color: settingsProvider.isDarkModeEnable() ? Colors.black : Colors.white),
            ),
          ),
        )
      ],
    );
  }

  void tasbehMode() {
    if (tasbehCounter >= 0) {
      tasbehCounter++;
    }
    if (tasbehCounter == 33) {
      index++;
      tasbehCounter = 0;
    }
    if (index == tasbehcontant.length) {
      index = 0;
    }
    setState(() {
      angle++;
    });
  }
}
