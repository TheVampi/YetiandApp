import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:yetiand_app/screens/splash_screen.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 232, 247),
        centerTitle: true,
        title: const Text('Yetiand'),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: Text('Acerca de Nosotros'),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              'Lorem ipsum dolor sit amet consectetur adipiscing elit nec, ociosqu netus potenti taciti fames non phasellus etiam vestibulum, erat ad litora ligula platea massa sem.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: '',
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text('Apoya nuestro proyecto'),
            ),
            SizedBox(
              width: 70,
              child: ElevatedButton(
                child: Text(
                  'Donar',
                  style: TextStyle(color: Colors.blue, fontSize: 10),
                ),
              ),
            ),
            Center(
              child: Text(
                  'Infromacion Tecnica: \n\n •Creado con Flutter v3.0.2 \n\n •Licencias de codigo abierto de Google \n\n •Puedes ser colaborador del proyecto haciendo pull request en el repositorio:  \n\n •https://github.com/TheVampi \n\n'),
            ),
            Center(
              child: Text('Hecho con ❤️ desde el CETIS 115'),
            )
          ],
        ),
      ),
    );
  }
}
