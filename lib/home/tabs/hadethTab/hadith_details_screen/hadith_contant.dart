import 'package:flutter/material.dart';

class HadithContantWidget extends StatelessWidget {
  String Content;

  HadithContantWidget({required this.Content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: SingleChildScrollView(
        child: Text(
          Content,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
