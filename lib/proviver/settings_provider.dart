import 'package:flutter/material.dart';
import 'package:islami/UI/app_theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String selectedLocal = "en";
  ThemeMode selectedTheme = ThemeMode.light;


  bool isDarkModeEnable() {
    return selectedTheme == ThemeMode.dark;
  }



  void getTheme()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme = prefs.getString("theme")?? "light";
    if(theme == "light") {
      selectedTheme = ThemeMode.light;
    }
    else{
      selectedTheme = ThemeMode.dark;
    }
    notifyListeners();
  }

  void getLocal()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String local = prefs.getString("local")?? "en";
    selectedLocal = local;
    notifyListeners();

  }



  void saveThemeMode(ThemeMode newTheme)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(newTheme == ThemeMode.light){
      await prefs.setString("theme", "light");
    }
    else{
      await prefs.setString("theme", "dark");
    }
  }


  void changeTheme(ThemeMode newTheme) {
    selectedTheme = newTheme;
    saveThemeMode(newTheme);
    notifyListeners();
  }


  void changeLanguage(String newLanguage) {
    selectedLocal = newLanguage;
    saveLocal(newLanguage);
    notifyListeners();
  }

  String getSelectedLocalName() {
    return selectedLocal == "en" ? "English" : "العربية";
  }

  void saveLocal(String newLanguage)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("local", newLanguage);




}
}
