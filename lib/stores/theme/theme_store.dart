import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_boilerplate_demo/data/repository/app_repository.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class  _ThemeStore with Store{
  final String tag = "_ThemeStore";

// repository instance
late final AppRepository _appRepository;

// store variable
@observable
  bool _darkMode = false;

// action
@action
  Future changeBrightnessToDark(bool value) async {
  _darkMode = value;

  await _appRepository.changeBrightnessToDark(value);
 }

  // getters:-------------------------------------------------------------------
  bool get darkMode => _darkMode;

  // general methods:-----------------------------------------------------------
  Future init() async {
    _darkMode = _appRepository.isDarkMode;
  }

  // constructor:---------------------------------------------------------------
  _ThemeStore(AppRepository appRepository)
      : _appRepository = appRepository {
    init();
  }



  bool isPlatformDark(BuildContext context) =>
      MediaQuery.platformBrightnessOf(context) == Brightness.dark;

}