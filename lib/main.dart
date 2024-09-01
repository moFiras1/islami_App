import 'package:flutter/material.dart';
import 'package:islami_app/home/home%20screen.dart';
import 'package:islami_app/home/tabs/hadethTab/hadith_details_screen/hadith_details_screen.dart';
import 'package:islami_app/home/tabs/quranTab/quran_details/quran_detailsScreen.dart';
import 'package:islami_app/splash/splash%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        quranDetailsScreen.routeName: (_) => quranDetailsScreen(),
        HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
      },
      theme: ThemeData(
          canvasColor: Color(0xFFB7935F),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedIconTheme: IconThemeData(
                size: 60,
              )),
          appBarTheme: AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          )),
    );
  }
}
