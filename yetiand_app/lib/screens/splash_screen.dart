import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:yetiand_app/screens/home_page.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';

class MyApp extends StatefulWidget {
//  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      backgroundColor: Colors.white,
      image: Image.asset('assets/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: HomePage(),
    );
  }
}
