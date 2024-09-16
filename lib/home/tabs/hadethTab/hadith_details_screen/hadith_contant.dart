import 'package:flutter/material.dart';

class HadithContantWidget extends StatelessWidget {
  String Content;

  HadithContantWidget({required this.Content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: SingleChildScrollView(
        child: Text(
          Content,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
