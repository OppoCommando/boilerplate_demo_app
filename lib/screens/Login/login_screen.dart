import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_boilerplate_demo/stores/theme/theme_store.dart';
import 'package:my_boilerplate_demo/untils/theme/theme_management.dart';
import 'package:provider/src/provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   late ThemeStore _themeStore;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _themeStore = Provider.of<ThemeStore>(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        actions: _buildActions(context),
      ),

      body: Center(
        child: Column(
          children:  [
            const Text('Test Theme Change'),
            RaisedButton(
              onPressed: () {
                _themeStore.changeBrightnessToDark(!_themeStore.darkMode);
                context.read<ThemeManagement>().toggleTheme();
              },
              child: Text('Toggle Theme'),
            ),

          ],
        ),
      ),
    );
  }


   List<Widget> _buildActions(BuildContext context) {
     return <Widget>[
       _buildThemeButton(),
     ];
   }

   Widget _buildThemeButton() {
     return Observer(
       builder: (context) {
         return  IconButton(
             icon: Icon(_themeStore.darkMode ? Icons.brightness_5 : Icons.brightness_3),
             onPressed: () {
               _themeStore.changeBrightnessToDark(!_themeStore.darkMode);
              // context.read<ThemeManagement>().toggleTheme();
             }
         );
       },
     );
   }
}
