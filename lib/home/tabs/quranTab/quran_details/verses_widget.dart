import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class versesWidget extends StatelessWidget {
  String verses;

  versesWidget({required this.verses});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      alignment: Alignment.center,
      child: Text(
        verses,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }
}
