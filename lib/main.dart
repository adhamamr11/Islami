import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/UI/Home/hadeth/hadeth_contant.dart';
import 'package:islami/UI/Home/home_screen.dart';
import 'package:islami/UI/Home/quran/surah_contant.dart';
import 'package:islami/UI/Splash/splash_screen.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/proviver/settings_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => SettingsProvider()..getTheme()..getLocal(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SurahContant.routeName: (_) => SurahContant(),
        HadethContant.routeName: (_) => HadethContant()
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingsProvider.selectedTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.selectedLocal),
    );
  }
}
