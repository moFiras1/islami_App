import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int count = 0;
  int index = 0;
  double turn = 0;
  final List<String> azkar = [
    "لا اله إلا الله",
    "سبحان الله",
    "الحمد لله",
    "الله اكبر"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.04),
                  child: Image.asset(
                    'assets/images/head of seb7a.png',
                  ),
                ), // head of seb7a image
                AnimatedRotation(
                  duration: Duration(
                    milliseconds: 300,
                  ),
                  turns: turn,
                  child: Image.asset(
                    "assets/images/body of seb7a.png",
                  ),
                ), // body of seb7a image
              ],
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ), // seb7a image
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.number_of_praises,
                textAlign: TextAlign.center,
                style: Theme.of(context)!.textTheme.labelMedium,
              ), //عدد التسبيحات
              SizedBox(
                height: 26,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color(0xFFB7935F),
                    borderRadius: BorderRadius.circular(24)),
                child: Text(
                  "$count",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ), // num of tsbeh
              SizedBox(
                height: 29,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB7935F)),
                onPressed: () {
                  setState(() {
                    count++;
                    turn += 0.03;
                    if (count == 34) {
                      count = 0;
                      index++;
                      if (index == azkar.length) {
                        index = 0;
                      }
                    }
                  });
                },
                child: Text(
                  azkar[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ), // alzker
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
