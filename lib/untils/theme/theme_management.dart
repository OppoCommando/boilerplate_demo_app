import 'package:flutter/material.dart';
import 'package:my_boilerplate_demo/constants/app_theme.dart';
import 'package:my_boilerplate_demo/stores/theme/theme_store.dart';

class ThemeManagement with ChangeNotifier{
  ThemeData _currentTheme=themeData;
  ThemeData get currentTheme=>_currentTheme;
  late ThemeStore _themeStore;

  void toggleTheme(){
    //_themeStore.changeBrightnessToDark(!_themeStore.darkMode);
    _currentTheme = _currentTheme == themeData ? darkThemeData : themeData;
    notifyListeners();
  }

}