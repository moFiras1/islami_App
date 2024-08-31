import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/tabs/quranTab/quran_details/verses_widget.dart';
import 'package:islami_app/home/tabs/quranTab/sura_title_widget.dart';

class quranDetailsScreen extends StatefulWidget {
  static const String routeName = '/quran_Screen';

  @override
  State<quranDetailsScreen> createState() => _quranDetailsScreenState();
}

class _quranDetailsScreenState extends State<quranDetailsScreen> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgument argument =
        ModalRoute.of(context)?.settings.arguments as SuraArgument;
    if (Verses.isEmpty) loadFile(argument.index);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/bg3.png"),
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(argument.suraTitle),
          ),
          backgroundColor: Colors.transparent,
          body: Verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Color(0xFFB7935F),
                ))
              : Card(
                  color: Colors.white,
                  elevation: 8,
                  margin: EdgeInsets.symmetric(vertical: 18, horizontal: 29),
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          versesWidget(verses: Verses[index]),
                      separatorBuilder: (context, index) => Divider(
                            color: Color(0xFFB7935F),
                            indent: 24,
                            endIndent: 24,
                          ),
                      itemCount: Verses.length),
                )),
    );
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split("\n");
    Verses = suraLines;
    setState(() {});
  }
}
