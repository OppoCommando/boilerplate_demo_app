import 'package:my_boilerplate_demo/constants/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
// shared pref instance
  late final SharedPreferences _sharedPreference;

  SharedPreferenceHelper(this._sharedPreference);

  // Theme:------------------------------------------------------
  bool get isDarkMode {
    return _sharedPreference.getBool(Preferences.is_dark_mode) ?? false;
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.setBool(Preferences.is_dark_mode, value);
  }
}