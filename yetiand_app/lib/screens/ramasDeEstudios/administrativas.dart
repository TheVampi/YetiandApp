import 'package:flutter/material.dart';
import 'package:yetiand_app/src/clase/variables_test_vocacional.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';

import '../home_page.dart';

class ramaAdministracion extends StatelessWidget {
  final variablesTest alumno;
  const ramaAdministracion({Key key, @required this.alumno}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 189, 0, 31),
        title: const Text('Tus resultados:,',style: TextStyle(
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
                      'econom??a - administraci??n',
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
                  '\n??? Lic en Administraci??n y Desarrollo de Negocios.\n??? Lic en Administraci??n Hotelera.\n??? Lic en Administraci??n de Negocios Internacionales.\n??? Lic en Administraci??n de Restaurantes.',
                ),
                _containerUniversidad(
                  'Complejo Escolar Interactivo del Baj??o',
                  'assets/ceib_logo.jpg',
                  '\n??? Lic. en Administraci??n.\n??? Ing. Industrial Administrativa.\n??? Lic. en Administraci??n y Log??stica Empresarial.',
                ),
                _containerUniversidad(
                  'Centro Universitario Celsus',
                  'assets/celsus_logo.png',
                  '\n??? Lic. en Administraci??n y Desarrollo de Empresas.',
                ),
                _containerUniversidad(
                    'Instituto Universitario del Centro de M??xico',
                    'assets/educem_logo.jpg',
                    '\n??? Lic. en Administraci??n. \n??? Lic. en Administraci??n Tur??stica y Hotelera.'),
                _containerUniversidad(
                  'Instituto Firenze',
                  'assets/firenze_logo.png',
                  '\n??? Lic. en Administraci??n.',
                ),
                _containerUniversidad(
                  'Educaci??n Nuevo Milenio',
                  'assets/nuevomilenio_logo.jpg',
                  '\n??? Lic. en Administraci??n en Recursos Humanos.',
                ),
                _containerUniversidad(
                  'Centro Universitario Pablo Picasso',
                  'assets/pablopicasso_logo.png',
                  '\n??? Lic. en Administraci??n de Empresas. ',
                ),
                _containerUniversidad(
                  'Sabes Unideg Celaya',
                  'assets/sabes_logo.png',
                  '\n??? Lic. en Administraci??n y Desarrollo de Negocios.',
                ),
                _containerUniversidad(
                  'Instituto Tecnol??gico de Celaya',
                  'assets/tecno_logo.jpg',
                  '\n??? Lic. en Administraci??n.',
                ),
                _containerUniversidad(
                  'UCA Universidad Continente Americano',
                  'assets/uca_logo.png',
                  '\n??? Lic. en Administraci??n de Empresas.',
                ),
                _containerUniversidad(
                  'Universidad de Celaya',
                  'assets/unicelaya_logo.png',
                  '\n??? Lic. en Industrial Administrativa.\n??? Lic. en Direcci??n y Administraci??n de Negocios Globales.',
                ),
                _containerUniversidad(
                  'UNITESBA Universidad',
                  'assets/unitesba_logo.jpg',
                  '\n??? Lic. en Administraci??n Tur??stica.',
                ),
                _containerUniversidad(
                  'UTEC Celaya - Universidad Tecnol??gica del Centro de M??xico',
                  'assets/utec_logo.png',
                  '\n??? Lic. en Administraci??n Industrial.',
                ),
                _containerUniversidad(
                  'Universidad Tecnol??gica Laja Baj??o',
                  'assets/utlb_logo.png',
                  '\n??? Lic. en administraci??n capital humano.',
                ),
                _containerUniversidad(
                  'Universidad Virtual del Estado de Guanajuato UVEG',
                  'assets/uveg_logo.jpg',
                  '\n??? Lic. en Administraci??n de la Mercadotecnia.\n??? Lic. en Administraci??n del Capital Humano.\n??? Lic. en Administraci??n de las Finanzas.',
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
