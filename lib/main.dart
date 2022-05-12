import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobbit/pages/all_notes.dart';
import 'package:mobbit/core/navigators/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobbit',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: Routers.generateRoute,
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: const Text(
              'MOBBIT',
              style: TextStyle(
                fontFamily: 'VarelaRound',
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            nextScreen: const AllTask(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.blue));
  }
}
