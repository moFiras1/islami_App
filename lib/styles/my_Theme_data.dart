import 'package:flutter/material.dart';

class MyThemeData {
  static const Color myGoldColor = Color(0xFFB7935F);
  static const Color myBlueColor = Color(0xFF141A2E);
  static const Color myYallowColor = Color(0xFFFACC1D);

  static ThemeData LightTheme = ThemeData(
    primaryColor: myGoldColor,
    dividerColor: myGoldColor,
    cardColor: Colors.white,
    colorScheme:
        ColorScheme.fromSeed(seedColor: myGoldColor, secondary: myGoldColor),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 29),
        color: Colors.white,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        )),
    scaffoldBackgroundColor: Colors.transparent,
    //canvasColor: Color(0xFFB7935F),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(
          size: 60,
        ),
        unselectedIconTheme: IconThemeData(size: 40)),
    appBarTheme: AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
        labelMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        labelSmall: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700)),
  );
  static ThemeData DarkTheme = ThemeData(
    primaryColor: myBlueColor,
    dividerColor: myYallowColor,
    cardColor: myBlueColor,
    colorScheme: ColorScheme.fromSeed(
        seedColor: myBlueColor, primary: myYallowColor, secondary: myBlueColor),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: myBlueColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 18, horizontal: 29),
        color: myBlueColor,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        )),

    scaffoldBackgroundColor: Colors.transparent,
    //canvasColor: Color(0xFFB7935F),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: myYallowColor,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(
          size: 60,
        ),
        unselectedIconTheme: IconThemeData(size: 40)),
    appBarTheme: AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
        labelMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        bodySmall: TextStyle(
          fontSize: 20,
          color: myYallowColor,
        ),
        labelSmall: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
  );
}
