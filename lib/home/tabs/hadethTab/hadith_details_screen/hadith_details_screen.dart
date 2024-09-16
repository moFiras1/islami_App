import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadethTab/hadethTabScreen.dart';
import 'package:islami_app/providers/settings_provider/settings%20provider.dart';
import 'package:provider/provider.dart';

import 'hadith_contant.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const routeName = "/hadith_details";

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);

    HadithItem hadithItem =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(myProvider.currentTheme == ThemeMode.light
              ? "assets/images/bg3.png"
              : 'assets/images/bg_dark.png'),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              hadithItem.title,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1),
            child: ClipRRect(
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                elevation: 12,
                child: HadithContantWidget(
                  Content: hadithItem.content,
                ),
              ),
            ),
          )),
    );
  }
}
