import 'package:flutter/material.dart';
import 'package:yetiand_app/screens/home_page.dart';

void main() => runApp( MiApp()); 

class MiApp extends StatelessWidget {
//  const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'form' : (BuildContext context) =>  HomePage (),
      },
    );
  }
}