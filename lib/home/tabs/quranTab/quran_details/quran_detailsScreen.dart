import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quranTab/quran_details/verses_widget.dart';
import 'package:islami_app/home/tabs/quranTab/sura_title_widget.dart';
import 'package:islami_app/providers/quranDetailsProvider/quran_details_Provider.dart';
import 'package:islami_app/providers/settings_provider/settings%20provider.dart';
import 'package:provider/provider.dart';

class quranDetailsScreen extends StatefulWidget {
  static const String routeName = '/quran_Screen';

  @override
  State<quranDetailsScreen> createState() => _quranDetailsScreenState();
}

class _quranDetailsScreenState extends State<quranDetailsScreen> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    var myQuranDetailsProvider = Provider.of<QuranDetailsProvider>(context);

    SuraArgument argument =
        ModalRoute.of(context)?.settings.arguments as SuraArgument;
    myQuranDetailsProvider.loadFile(argument.index);
    var myProvider = Provider.of<SettingsProvider>(context);

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
          appBar: AppBar(
            title: Text(argument.suraTitle),
          ),
          backgroundColor: Colors.transparent,
          body: myQuranDetailsProvider.quran.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).dividerColor,
                ))
              : Card(
                  child: ListView.separated(
                      itemBuilder: (context, index) => versesWidget(
                          verses: myQuranDetailsProvider.quran[index]),
                      separatorBuilder: (context, index) => Divider(
                            color: Theme.of(context).dividerColor,
                            indent: 24,
                            endIndent: 24,
                          ),
                      itemCount: myQuranDetailsProvider.quran.length),
                )),
    );
  }

// void loadFile(int index) async {
//   String fileContent =
//       await rootBundle.loadString('assets/files/${index + 1}.txt');
//   List<String> suraLines = fileContent.split("\n");
//   Verses = suraLines;
//   setState(() {});
// }
}
