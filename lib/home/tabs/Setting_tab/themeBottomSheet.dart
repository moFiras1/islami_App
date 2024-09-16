import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../providers/settings_provider/settings provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider myProvider = Provider.of<SettingsProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                myProvider.changeThemeMode(ThemeMode.light);
              },
              child: myProvider.currentTheme == ThemeMode.light
                  ? buildSelectedThemItem(AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemItem(
                      AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                myProvider.changeThemeMode(ThemeMode.dark);
              },
              child: myProvider.currentTheme == ThemeMode.dark
                  ? buildSelectedThemItem(AppLocalizations.of(context)!.dark)
                  : buildUnSelectedThemItem(
                      AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }

  Widget buildSelectedThemItem(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
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

  Widget buildUnSelectedThemItem(String unSelectedTheme) {
    return Row(
      children: [
        Text(unSelectedTheme, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
