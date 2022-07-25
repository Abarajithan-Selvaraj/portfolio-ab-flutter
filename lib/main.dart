import 'package:abselva/constants.dart';
import 'package:abselva/views/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'abselva',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: eerie,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: GoogleFonts.outfit().fontFamily,
            ),
      ),
      home: const Home(),
    );
  }
}
