import 'package:flutter/material.dart';
import 'package:islami_app/home/home%20screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Center(child: Image.asset('assets/images/logo2.png')),
    );
  }
}
