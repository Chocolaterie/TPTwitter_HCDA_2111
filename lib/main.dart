import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';
import 'package:tp_twitter/twitter-content.dart';
import 'package:tp_twitter/twitter-footer.dart';
import 'package:tp_twitter/twitter-header.dart';

void main() {
  runApp(AppTwitter());
}

class AppTwitter extends StatelessWidget {
  // set json file directory
  // default value is ['lib/i18n']
  //LocalJsonLocalization.delegate.directories = ['lib/i18n'];

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
      home: TwitterPage(),
    );
  }

}

class TwitterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Header
          TwitterHeader(),
          // Content
          Expanded(child: TwitterContent()),
          // Footer
          TwitterFooter(),
        ],
      ),
    );
  }

}