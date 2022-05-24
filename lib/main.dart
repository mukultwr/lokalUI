import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './pages/home_page.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.montserrat()),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {"/": (context) => HomePage(), "/login": (context) => HomePage()},
    );
  }
}
