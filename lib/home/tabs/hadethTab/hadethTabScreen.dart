import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/tabs/hadethTab/hadeth_tab_widget.dart';

class Hadethtab extends StatefulWidget {
  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
  List<HadithItem> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) loadHadethFile();
    return Container(
      child: hadithList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset('assets/images/hadith_header.png')),
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          hadethTitleWidget(hadithItem: hadithList[index]),
                      separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 2),
                            child: Divider(
                              height: 2,
                              color: Color(0xFFB7935F),
                            ),
                          ),
                      itemCount: hadithList.length),
                )
              ],
            ),
    );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadeth = fileContent.split('#'); // split al ahadeth

    ///// for loop//////

    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> hadethLines = allAhadeth[i].trim().split('\n');
      String hadthTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadthContent = hadethLines.join('\n');

      HadithItem hathItem =
          HadithItem(title: hadthTitle, content: hadthContent);
      hadithList.add(hathItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
