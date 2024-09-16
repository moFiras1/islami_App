import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadethTab/hadith_details_screen/hadith_details_screen.dart';

import 'hadethTabScreen.dart';

class hadethTitleWidget extends StatelessWidget {
  HadithItem hadithItem;

  hadethTitleWidget({required this.hadithItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadithDetailsScreen.routeName,
          arguments: hadithItem,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadithItem.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

