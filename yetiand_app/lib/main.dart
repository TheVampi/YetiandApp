import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      image: Image.asset('assets/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Home Page'),
      ),
      body: const Center(
        child: Text('Hola',
        style: TextStyle(
          fontFamily: 'Century Gothic',
          fontSize: 50.0,
          fontWeight: FontWeight.bold
          ),
        ),
        ),
      );
  }
}