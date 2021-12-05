import 'package:flutter/material.dart';
import 'package:my_boilerplate_demo/constants/colors.dart';
import 'package:my_boilerplate_demo/constants/font_family.dart';
final ThemeData themeData=ThemeData(
  fontFamily:FontFamily.sourceSansPro,
  brightness: Brightness.light,
  primaryColor: AppColors.cyan[100],
  primaryColorBrightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColor(AppColors.cyan[100]!.value,AppColors.cyan))
      .copyWith(secondary: AppColors.orange[100])
);

final ThemeData darkThemeData=ThemeData(
    fontFamily:FontFamily.sourceSansPro,
    brightness: Brightness.light,
    primaryColor: AppColors.cyan[700],
    primaryColorBrightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(AppColors.cyan[700]!.value,AppColors.cyan))
        .copyWith(secondary: AppColors.orange[700])

);