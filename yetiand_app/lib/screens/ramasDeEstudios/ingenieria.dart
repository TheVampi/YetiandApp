import 'package:flutter/material.dart';
import 'package:yetiand_app/src/clase/variables_test_vocacional.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';

import '../home_page.dart';

class ramaIngenieria extends StatelessWidget {
  final variablesTest alumno;
  const ramaIngenieria({Key key, @required this.alumno}) : super(key: key);

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
                      ' a??os',
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
                      'ciencias exactas e ingenier??a',
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
                  'Estan son las carreras relacionadas, ??Escoge las que m??s te gusten! ????????',
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
                  'CEDVA Celaya',
                  'assets/cedva_logo.png',
                  '\n??? Ing. Mec??nica Automotriz',
                ),
                _containerUniversidad(
                  'Complejo Escolar Interactivo del Baj??o',
                  'assets/ceib_logo.jpg',
                  '\n??? Ing. Industrial Administrativa.\n??? Lic. en Dise??o y Desarrollo de Aplicaciones.',
                ),
                _containerUniversidad(
                  'Centro Universitario Celsus',
                  'assets/celsus_logo.png',
                  '\n??? Ing. en Biotecnolog??a.\n??? Ing. Industrial.\n??? Ing. en Mecatr??nica.',
                ),
                _containerUniversidad(
                  'Instituto Universitario del Centro de M??xico',
                  'assets/educem_logo.jpg',
                  ' \n??? Ing. Industrial.\n??? Ing. Mec??nica Automotriz.',
                ),
                _containerUniversidad(
                  'Centro Universitario Pablo Picasso',
                  'assets/pablopicasso_logo.png',
                  '\n??? Ing. Industrial y de Sistemas ',
                ),
                _containerUniversidad(
                  'Instituto Tecnol??gico de Roque',
                  'assets/roque_logo.jpg',
                  '\n??? Ing. en Gesti??n Empresarial.\n??? Ing. en Tecnolog??as de la Informaci??n y Comunicaciones.\n??? Ing. Agr??noma.\n??? Ing. en Industrias Alimentarias.\n??? Ing. en Innovaci??n Agr??cola Sostenible.\n??? Ing. Hidrol??gica.',
                ),
                _containerUniversidad(
                  'Sabes Unideg Celaya',
                  'assets/sabes_logo.png',
                  '\n??? Ing. Industrial.\n??? Ing. en Log??stica.\n??? Ing. en Tecnolog??as de la Informaci??n.',
                ),
                _containerUniversidad(
                  'Instituto Tecnol??gico de Celaya',
                  'assets/tecno_logo.jpg',
                  '\n??? Ing. Ambiental.\n??? Ing. Bioqu??mica.\n??? Ing. Electr??nica.\n??? Ing. en Gestion Empresarial.\n??? Ing. Industrial.\n??? Ing. Mec??nica.\n??? Ing. Mecatr??nica.',
                ),
                _containerUniversidad(
                  'Universidad Latina de M??xico',
                  'assets/ulm_logo.png',
                  ' Ing. Industrial.',
                ),
                _containerUniversidad(
                  'UNITESBA Universidad',
                  'assets/unitesba_logo.jpg',
                  '\n??? Ing. Industrial.\n??? Ing. Civil',
                ),
                _containerUniversidad(
                  'UTEC Celaya - Universidad Tecnol??gica del Centro de M??xico',
                  'assets/utec_logo.png',
                  '\n??? Ing. en Dise??o Industrial.\n??? Ing. Industrial.',
                ),
                _containerUniversidad(
                  'Universidad Tecnol??gica Laja Baj??o',
                  'assets/utlb_logo.png',
                  '\n??? Ing. en log??stica comercial global.\n??? Ing. en mecatr??nica.',
                ),
                _containerUniversidad(
                  'Universidad Virtual del Estado de Guanajuato UVEG',
                  'assets/uveg_logo.jpg',
                  '\n??? Ing. en Gesti??n de Proyectos.\n??? Ing. en Gesti??n de Tecnolog??as de Informaci??n.\n??? Ing. en Industrial.',
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
