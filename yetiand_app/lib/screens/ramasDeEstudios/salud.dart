import 'package:flutter/material.dart';
import 'package:yetiand_app/src/clase/variables_test_vocacional.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';

import '../home_page.dart';

class ramaSalud extends StatelessWidget {
  final variablesTest alumno;
  const ramaSalud({Key key, @required this.alumno}) : super(key: key);

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
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '${alumno.nombre},',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
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
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '${alumno.edad}',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const Text(
                      ' años',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.w600),
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
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '${alumno.estudiante}',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
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
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'vimos que te gusta la rama de',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'ciencias de la salud',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.purple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Estan son las carreras relacionadas, ¡Escoge las que más te gusten! 👉👈',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 30, 30),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //A PARTIR DE AQUI EMPIEZAN LOS CONTAINERS DE LAS UNIVERSIDADES
                _containerUniversidad(
                'Escuela de Enfermería y Obstetricia CMQ',
                'assets/cmq_logo.jpg',
                '\n• Lic. en Ciencias y Habilidades de Enfermería',
                ),
                _containerUniversidad(
                'Instituto Universitario del Centro de México',
                'assets/educem_logo.jpg',
                '• Lic. en Criminologia.\n• Lic. en Enfermería.\n• Lic. en Nutrición.\n• Lic. en Psicología Clínica.\n• Lic. en Psicología Educativa.\n• Lic. en Psicología Social.',
                ),
                _containerUniversidad(
                'IDCC Instituto Dr. Carlos Coqui Campus Celaya',
                'assets/idcc_logo.jpg',
                '\n• Lic. en Radiología e Imagen.',
                ),
                            _containerUniversidad(
                'Centro Universitario Pablo Picasso',
                'assets/pablopicasso_logo.png',
                '• Lic. en Criminología.',
                ),
                _containerUniversidad(
                'Universidad Latina de México',
                'assets/ulm_logo.png',
                '• Cirujano Dentista.\n• Psicología.\n• Medico Cirujano.\n• Nutrición.',
                ),
                _containerUniversidad(
                'Universidad de Celaya',
                'assets/unicelaya_logo.png',
                '\n• Lic. en Psicología Sistémica.\n• Lic. en Medicina.',
                ),
                _containerUniversidad(
                'UNITESBA Universidad',
                'assets/unitesba_logo.jpg',
                '• Lic. Fisoterapia.',
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
