
// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_app/introduction_call_ui.dart';
import 'package:flutter_cake_shop_app/splash_screen_ui.dart';
import 'package:flutter_cake_shop_app/sub_b_home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionCallUI(),
    ),
  );
}

class FlutterSauHealthCalcilatorApp extends StatefulWidget {
  const FlutterSauHealthCalcilatorApp({super.key});

  @override
  State<FlutterSauHealthCalcilatorApp> createState() =>
      _FlutterSauHealthCalcilatorAppState();
}

class _FlutterSauHealthCalcilatorAppState
    extends State<FlutterSauHealthCalcilatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
