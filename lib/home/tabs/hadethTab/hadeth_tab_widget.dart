import 'package:flutter/material.dart';

class hadethTitleWidget extends StatelessWidget {
  String hadthTitle;
  int index;

  hadethTitleWidget({required this.hadthTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Text(
        hadthTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
      ),
    );
  }
}

class hadethArgument {
  String hadthTitle;

  int index;

  hadethArgument({required this.hadthTitle, required this.index});
}
