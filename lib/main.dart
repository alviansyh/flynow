import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flynow/cubit/auth_cubit.dart';
import 'package:flynow/cubit/page_cubit.dart';
import 'package:flynow/ui/pages/get_started_page.dart';
import 'package:flynow/ui/pages/main_page.dart';
import 'package:flynow/ui/pages/sign_up_page.dart';
import 'package:flynow/ui/pages/splash_page.dart';
import 'package:flynow/ui/pages/bonus_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: non_constant_identifier_names
bool USE_FIRESTORE_EMULATOR = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (BuildContext context) => const SplashPage(),
          '/get-started': (BuildContext context) => const GetStartedPage(),
          '/sign-up': (BuildContext context) => SignUpPage(),
          '/bonus': (BuildContext context) => const BonusPage(),
          '/main': (BuildContext context) => const MainPage(),
        },
      ),
    );
  }
}
