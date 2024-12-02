import 'package:flutter/material.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/theme/theme.dart';
import 'package:icb0_m08u01ia03_api_grojo/home/views/views.dart';
import 'package:icb0_m08u01ia03_api_grojo/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(context),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const Home(),
    );
  }
}
