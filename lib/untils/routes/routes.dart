import 'package:flutter/cupertino.dart';
import 'package:my_boilerplate_demo/screens/Login/login_screen.dart';

class Routes{
  Routes._();
//static variables
  static const String login = '/login';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => const LoginScreen(),
  };

}