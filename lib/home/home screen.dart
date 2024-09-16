import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/tabs/Setting_tab/setting_tab.dart';
import 'package:islami_app/home/tabs/hadethTab/hadethTabScreen.dart';
import 'package:islami_app/home/tabs/quranTab/quranTab.dart';
import 'package:islami_app/home/tabs/radioTab/radioTab.dart';
import 'package:islami_app/home/tabs/tasbehTab/tasbeh%20tab.dart';
import 'package:islami_app/providers/settings_provider/settings%20provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 3;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var myPrvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(myPrvider.currentTheme == ThemeMode.light
              ? "assets/images/bg3.png"
              : "assets/images/bg_dark.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            AppLocalizations.of(context)!.app_title,
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).colorScheme.secondary,
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
                  label: AppLocalizations.of(context)!.radio), // Radio
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha-1.png'),
                    size: 50,
                  ),
                  label: AppLocalizations.of(context)!.tasbeh), // Seb7a
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png'),
                    size: 40,
                  ),
                  label: AppLocalizations.of(context)!.hadith), // hadith
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran.png'),
                    size: 50,
                  ),
                  label: AppLocalizations.of(context)!.quran), //Quran
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                  ),
                  label: AppLocalizations.of(context)!.settings), //setting
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  var tabs = [RadioTab(), TasbehTab(), Hadethtab(), Qurantab(), SettingTab()];
}
