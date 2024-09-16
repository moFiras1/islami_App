import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/tabs/Setting_tab/Language_theme_BottomSheet.dart';
import 'package:islami_app/home/tabs/Setting_tab/themeBottomSheet.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          color: Theme.of(context).dividerColor, width: 3)),
                  child: Text(
                    AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
            ),
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            InkWell(
              onTap: () {
                showLangugeBottomSheet(context);
              },
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          color: Theme.of(context).dividerColor, width: 3)),
                  child: Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.labelSmall,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

void showLangugeBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => LanguageThemeBottomsheet(),
  );
}

void showThemeBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => ThemeBottomSheet(),
  );
}
