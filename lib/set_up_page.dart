import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_boilerplate_demo/data/repository/app_repository.dart';
import 'package:my_boilerplate_demo/screens/Login/login_screen.dart';
import 'package:my_boilerplate_demo/stores/theme/theme_store.dart';
import 'package:my_boilerplate_demo/untils/routes/routes.dart';
import 'package:my_boilerplate_demo/untils/theme/theme_management.dart';
import 'package:provider/provider.dart';

import 'constants/app_theme.dart';
import 'di/componets/service_locator.dart';
class SetUpController extends StatelessWidget {
   SetUpController({Key? key}) : super(key: key);

  final ThemeStore _themeStore = ThemeStore(getIt<AppRepository>());
  @override
  Widget build(BuildContext context) {
    return   Observer(
      builder:(context) =>  MultiProvider(
        providers: [
          //ChangeNotifierProvider(create: (_) => ThemeManagement())
          Provider<ThemeStore>(create: (_) => _themeStore),
        ],
        child: MaterialApp(
            theme: _themeStore.darkMode ? darkThemeData : themeData,
             routes: Routes.routes,
            home:  const LoginScreen(),
        ),
      ),
    );
  }
}

