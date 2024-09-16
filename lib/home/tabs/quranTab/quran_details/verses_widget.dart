import 'package:flutter/material.dart';

class versesWidget extends StatelessWidget {
  String verses;

  versesWidget({required this.verses});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      alignment: Alignment.center,
      child: Text(verses,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
