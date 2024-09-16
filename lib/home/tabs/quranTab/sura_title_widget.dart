import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quranTab/quran_details/quran_detailsScreen.dart';

class SuraTitleWidget extends StatelessWidget {
  String suraTitle;
  String numOfVerse;
  int index;

  SuraTitleWidget(
      {super.key,
      required this.suraTitle,
      required this.numOfVerse,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, quranDetailsScreen.routeName,
            arguments: SuraArgument(suraTitle: suraTitle, index: index));
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  suraTitle,
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ),
            Container(
              color: Theme.of(context).dividerColor,
              width: 2,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(numOfVerse,
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraArgument {
  String suraTitle;
  int index;

  SuraArgument({required this.suraTitle, required this.index});
}
