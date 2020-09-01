import 'package:flutter/material.dart';
import 'package:in18_teste_app/pages/home.dart';

import 'package:i18n_extension/i18n_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
       const Locale('en', "US"),
       const Locale('pt', "BR"),
      ],
        title: 'I18n_Test',
        theme: ThemeData(

          primarySwatch: Colors.green,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),


      home: I18n(

        child: MyHomePage(),
      ),

    );
  }
}


