import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/home/home%20screen.dart';
import 'package:islami_app/home/tabs/hadethTab/hadith_details_screen/hadith_details_screen.dart';
import 'package:islami_app/home/tabs/quranTab/quran_details/quran_detailsScreen.dart';
import 'package:islami_app/providers/quranDetailsProvider/quran_details_Provider.dart';
import 'package:islami_app/providers/settings_provider/settings%20provider.dart';
import 'package:islami_app/splash/splash%20screen.dart';
import 'package:islami_app/styles/my_Theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var prvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(prvider.currentLanguage),
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        quranDetailsScreen.routeName: (_) => ChangeNotifierProvider(
            create: (context) => QuranDetailsProvider(),
            child: quranDetailsScreen()),
        HadithDetailsScreen.routeName: (_) => HadithDetailsScreen(),
      },
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: prvider.currentTheme,
    );
  }
}
