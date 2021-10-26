import 'package:flutter/material.dart';
import 'package:flynow/ui/pages/get_started_page.dart';
import 'package:flynow/ui/pages/sign_up_page.dart';
import 'package:flynow/ui/pages/splash_page.dart';
import 'package:flynow/ui/pages/bonus_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => const SplashPage(),
        '/get-started': (BuildContext context) => const GetStartedPage(),
        '/sign-up': (BuildContext context) => const SignUpPage(),
        '/bonus': (BuildContext context) => const BonusPage(),
      },
    );
  }
}
