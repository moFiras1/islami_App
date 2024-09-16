import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/settings_provider/settings%20provider.dart';
import 'package:provider/provider.dart';

class LanguageThemeBottomsheet extends StatefulWidget {
  @override
  State<LanguageThemeBottomsheet> createState() =>
      _LanguageThemeBottomsheetState();
}

class _LanguageThemeBottomsheetState extends State<LanguageThemeBottomsheet> {
  @override
  Widget build(BuildContext context) {
    var myPrvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                myPrvider.changeAppLanguage('en');
              },
              child: myPrvider.currentLanguage == 'en'
                  ? buildSelectedLangItem(AppLocalizations.of(context)!.english)
                  : buildUnSelectedLangItem(
                      AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                myPrvider.changeAppLanguage('ar');
              },
              child: myPrvider.currentLanguage == "ar"
                  ? buildSelectedLangItem(AppLocalizations.of(context)!.arabic)
                  : buildUnSelectedLangItem(
                      AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget buildSelectedLangItem(String selectedLang) {
    return Row(
      children: [
        Text(
          selectedLang,
          style: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        Spacer(),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).colorScheme.primary,
        )
      ],
    );
  }

  Widget buildUnSelectedLangItem(String unSelectedLang) {
    return Row(
      children: [
        Text(
          unSelectedLang,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
