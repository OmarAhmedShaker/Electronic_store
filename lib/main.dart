import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:app_store/constants.dart';
import 'package:app_store/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electirical Store',
      theme: ThemeData(
          // textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
          colorScheme: ColorScheme(
              primary: kPrimaryColor,
             
              secondary: kPrimaryColor,
             
              surface: Colors.black,
              background: Colors.black,
              error: Colors.black,
              onPrimary: Colors.white,
              onSecondary: Colors.black,
              onSurface: Colors.black,
              onBackground: Colors.black,
              onError: Colors.black,
              brightness: Brightness.light)),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      home: HomeScreen(),
    );
  }
}
