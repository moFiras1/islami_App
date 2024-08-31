import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/hadethTab/hadethTabScreen.dart';
import 'package:islami_app/home/tabs/quranTab/quranTab.dart';
import 'package:islami_app/home/tabs/radioTab/radioTab.dart';
import 'package:islami_app/home/tabs/tasbehTab/tasbeh%20tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 3;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/bg3.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Islami',
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFFB7935F),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/radio@3x.png'),
                    size: 50,
                  ),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha-1.png'),
                    size: 50,
                  ),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png'),
                    size: 40,
                  ),
                  label: 'hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran.png'),
                    size: 50,
                  ),
                  label: 'Quran'),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  var tabs = [RadioTab(), TasbehTab(), Hadethtab(), Qurantab()];
}
