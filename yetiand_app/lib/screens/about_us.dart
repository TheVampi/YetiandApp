import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:yetiand_app/screens/home_page.dart';
import 'package:yetiand_app/screens/splash_screen.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 232, 247),
        centerTitle: true,
        title: const Text(
          'Yetiand',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Century Gothic',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: Text(
                'Acerca de Nosotros',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontFamily: 'Century Gothic',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              'Lorem ipsum dolor sit amet consectetur adipiscing elit nec, ociosqu netus potenti taciti fames non phasellus etiam vestibulum, erat ad litora ligula platea massa sem.',
              style: TextStyle(
                fontFamily: 'Century Gothic',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Apoya nuestro proyecto',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Century Gothic',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            ElevatedButton(
              child: Text(
                'Donar',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontFamily: 'Century Gothic'),
              ),
              //                      icon: const Icon(Icons.sentiment_satisfied_alt_rounded ),
            ),
            Center(
              child: Text(
                'Infromacion Tecnica: \n\n •Creado con Flutter v3.0.2 \n\n •Licencias de codigo abierto de Google \n\n •Puedes ser colaborador del proyecto haciendo pull request en el repositorio:  \n\n •https://github.com/TheVampi \n\n',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Century Gothic',
                ),
              ),
            ),
            Center(
              child: Text(
                'Hecho con el ❤️ desde el CETIS 115',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Century Gothic',
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.home),
      ),
    );
  }
}
