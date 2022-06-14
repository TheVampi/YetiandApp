import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yetiand_app/screens/splash_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
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
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
              child: Container(
                child: const Text('Tecno',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              ),
            ),
            Container(
              child: Row(
                children: const [
                  Image(
                    image: AssetImage('assets/tecno_logo.jpg'),
                    width: 100,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Text(
                        '\n• Licenciatura en Ciencias de la Comunicación.\n• Licenciatura en Relaciones Internacionales.\n• Licenciatura en Contaduría.\n• Licenciatura en Derecho.'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //BOTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyApp();
        },
        child: const Icon(Icons.home_rounded),
      ),
      //FIN BOTON
    );
  }
}

Container _containerUniversidad(String logoUni, String textoCarrera) {
  return Container(
    margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
    child: Container(
      child: const Text('Tecno',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
    ),
  );
}
