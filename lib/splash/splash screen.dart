import 'package:flutter/material.dart';
import 'package:islami_app/home/home%20screen.dart';
import 'package:islami_app/providers/settings_provider/settings%20provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    var myPrvider = Provider.of<SettingsProvider>(context);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset(myPrvider.currentTheme == ThemeMode.light
              ? 'assets/images/logo2.png'
              : 'assets/images/logo_dark.png')),
    );
  }
}
