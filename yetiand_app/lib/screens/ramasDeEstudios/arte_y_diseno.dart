import 'package:flutter/material.dart';
import 'package:yetiand_app/src/clase/variables_test_vocacional.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';

import '../home_page.dart';

class ramaArteYDiseno extends StatelessWidget {
  final variablesTest alumno;
  const ramaArteYDiseno({Key key, @required this.alumno}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 189, 0, 31),
        title: const Text('Tus resultados:',style: TextStyle(
            fontSize: 40,
            fontFamily: 'Century Gothic',
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Hola ',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Century Gothic'),
                    ),
                    Text(
                      '${alumno.nombre},',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Century Gothic',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'notamos que tienes ',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Century Gothic',
                          ),
                    ),
                    Text(
                      '${alumno.edad}',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Century Gothic',
                      ),
                    ),
                    const Text(
                      ' a??os',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Century Gothic'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'y que ',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Century Gothic'),
                    ),
                    Text(
                      '${alumno.estudiante}',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Century Gothic',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'No te preocupes...',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Century Gothic',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'vimos que te gusta la rama de',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Century Gothic'
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Arte, Arquitectura y Dise??o',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.purple,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Century Gothic',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Estan son las carreras relacionadas, ??Escoge las que m??s te gusten!',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 93, 150, 255),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Century Gothic',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //A PARTIR DE AQUI EMPIEZAN LOS CONTAINERS DE LAS UNIVERSIDADES
                 _containerUniversidad(
                'CEDVA Celaya',
                'assets/cedva_logo.png',
                '\n??? Lic en Dise??o y Comunicacion Audiovisual.',
),
            _containerUniversidad(
                'Complejo Escolar Interactivo del Baj??o',
                'assets/ceib_logo.jpg',
                '\n??? Lic. en Dise??o y Desarrollo de Aplicaciones.',
),
            _containerUniversidad(
                'Conservatorio De M??sica Y Artes De Celaya',
                'assets/conservatorio_logo.png',
                '\n??? Lic. en Canto. \n??? Lic. en Piano.\n??? Lic. en Canto Gregoriano.\n??? Lic. en Educaci??n Musical Escolar.\n??? Lic. en Instrumentismo.\n??? Lic. en Direcci??n Coral',
),
            _containerUniversidad(
                'Instituto Universitario del Centro de M??xico',
                'assets/educem_logo.jpg',
                '\n??? Lic. en Dise??o de Imagen. \n??? Lic. en Dise??o de Modas y Calzado. \n??? Lic. en Dise??o Gr??fico.',
),
            _containerUniversidad(
                'Universidad Latina de M??xico',
                'assets/ulm_logo.png',
                '\n??? Arquitectura.\n??? Dise??o Gr??fico. \n??? Dise??o de Interiores.',
),
            _containerUniversidad(
                'UTEC Celaya - Universidad Tecnol??gica del Centro de M??xico',
                'assets/utec_logo.png',
                '\n??? Ing. en Dise??o Industrial.',
),
              ],
            ),
          ),
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

Container _containerUniversidad(
    String nombreUni, String logoUni, String textoCarrera) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
          child: Container(
            child: Text(
              nombreUni,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Image(
                image: AssetImage(logoUni),
                width: 100,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Text(
                  textoCarrera,
                  style: const TextStyle(fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}
