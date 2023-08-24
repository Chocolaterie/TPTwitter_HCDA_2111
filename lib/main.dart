import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'package:tp_twitter/twitter-login-page.dart';
import 'package:tp_twitter/twitter-page.dart';

void main() {
  runApp(AppTwitter());
}

class AppTwitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localeResolutionCallback: (locale, supportedLocales) {
        // default language
        return Locale('fr', 'FR');
      },
      supportedLocales: [
        Locale('en', 'US'),
        Locale('fr', 'FR'),
      ],
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        LocalJsonLocalization.delegate,
      ],
      initialRoute: "/",
      routes: {
        "/" : (context) => TwitterLoginPage(),
        "/twitter-page" : (context) => TwitterPage()
      },
    );
  }
}