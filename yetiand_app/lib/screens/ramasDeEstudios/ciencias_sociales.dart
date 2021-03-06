import 'package:flutter/material.dart';
import 'package:yetiand_app/src/clase/variables_test_vocacional.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';

import '../home_page.dart';

class ramaCienciasSociales extends StatelessWidget {
  final variablesTest alumno;
  const ramaCienciasSociales({Key key, @required this.alumno})
      : super(key: key);

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
                          fontFamily: 'Century Gothic' ),
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
                      'Ciencias Sociales y \nHumanidades',
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
                  'Estan son las carreras relacionadas, ??Escoge las que m??s te gusten! ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 93, 150, 255),
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
                  '\n??? Lic en Administraci??n y Desarrollo de Negocios.\n??? Lic en Administraci??n Hotelera.\n??? Lic en Administraci??n de Negocios Internacionales.\n??? Lic en Administraci??n de Restaurantes.\n??? Lic en Contadur??a.\n??? Lic en Derecho.\n??? Lic en Dise??o y Comunicacion Audiovisual.\n??? Lic en Pedagog??a.\n??? Lic en Turismo\n',
                ),
                _containerUniversidad(
                  'Complejo Escolar Interactivo del Baj??o',
                  'assets/ceib_logo.jpg',
                  '\n??? Lic. en Derecho.\n??? Lic. en Administraci??n.\n??? Ing. Industrial Administrativa.\n??? Lic. en Administraci??n y Log??stica Empresarial.\n??? Lic. en Contadur??a P??blica y Finanzas.\n??? Lic. en Educaci??n y Desarrollo Humano.\n??? Lic. en Mercadotecnia y Publicidad',
                ),
                _containerUniversidad(
                  'Centro Universitario Celsus',
                  'assets/celsus_logo.png',
                  '\n??? Lic. en Administraci??n y Desarrollo de Empresas.\n??? Lic. en Contadur??a y Gesti??n Empresarial.\n??? Ing. en Mecatr??nica.',
                ),
                _containerUniversidad(
                  'Conservatorio De M??sica Y Artes De Celaya',
                  'assets/conservatorio_logo.png',
                  '\n??? Lic. en Educaci??n Musical Escolar.',
                ),
                _containerUniversidad(
                  'Instituto Universitario del Centro de M??xico',
                  'assets/educem_logo.jpg',
                  '\n??? Lic. en Administraci??n. \n??? Lic. en Administraci??n Tur??stica y Hotelera.\n??? Lic. en Ciencias de la Comunicaci??n.\n??? Lic. en Contadur??a.\n??? Lic. en Derecho. \n??? Lic. en Gastronom??a.\n??? Lic. en Mercadotecnia.\n??? Lic. en Negocios Internacionales.\n??? Lic. en Pedagog??a.\n??? Lic. en Psicolog??a Cl??nica.\n??? Lic. en Psicolog??a Educativa.\n??? Lic. en Psicolog??a Social.\n??? Lic. en Trabajo Social.',
                ),
                _containerUniversidad(
                  'Instituto Firenze',
                  'assets/firenze_logo.png',
                  '\n??? Lic. en Administraci??n. \n??? Lic. en Contabilidad.\n??? Lic. en Criminolog??a.\n??? Lic. en Derecho.\n??? Lic. en Pedagog??a.',
                ),
                _containerUniversidad(
                  'Educaci??n Nuevo Milenio',
                  'assets/nuevomilenio_logo.jpg',
                  '\n??? Lic. en Administraci??n en Recursos Humanos.\n??? Lic. en Derecho.',
                ),
                _containerUniversidad(
                  'Centro Universitario Oxford',
                  'assets/oxford_logo.png',
                  '\n??? Lic. en Pedagog??a.',
                ),
                _containerUniversidad(
                  'Centro Universitario Pablo Picasso',
                  'assets/pablopicasso_logo.png',
                  '\n??? Lic. en Administraci??n de Empresas.\n??? Lic. en Contadur??a P??blica Fiscal.\n??? Lic. en Derecho.\n??? Lic. en Pedagog??a.\n??? Lic. en Criminolog??a. ',
                ),
                _containerUniversidad(
                  'Instituto Tecnol??gico de Roque',
                  'assets/roque_logo.jpg',
                  '\n??? Ing. en Gesti??n Empresarial.\n??? Ing. en Tecnolog??as de la Informaci??n y Comunicaciones.',
                ),
                _containerUniversidad(
                  'Sabes Unideg Celaya',
                  'assets/sabes_logo.png',
                  '\n??? Lic. en Mercadotecnia.\n??? Lic. en Administraci??n y Desarrollo de Negocios.',
                ),
                _containerUniversidad(
                  'Instituto Tecnol??gico de Celaya',
                  'assets/tecno_logo.jpg',
                  '\n??? Lic. en Administraci??n.\n??? Ing. en Gestion Empresarial.',
                ),
                _containerUniversidad(
                  'UCA Universidad Continente Americano',
                  'assets/uca_logo.png',
                  '\n??? Lic. en Administraci??n de Empresas.\n??? Lic. en Contadur??a P??blica.\n??? Lic. en Derecho.\n??? Lic. en Educaci??n Preescolar.\n??? Lic. en Educaci??n Secundaria Especialidad en Espa??ol.\n??? Lic. en Educaci??n Secundaria Especialidad en Matem??ticas. ',
                ),
                _containerUniversidad(
                  'Universidad Latina de M??xico',
                  'assets/ulm_logo.png',
                  '\n??? Lic. en Gerontolog??a.\n??? Comercio Internacional.\n??? Contadur??a.\n??? Derecho.\n??? Psicolog??a.',
                ),
                _containerUniversidad(
                  'Universidad de Celaya',
                  'assets/unicelaya_logo.png',
                  '\n??? Lic. en Psicolog??a Sist??mica.\n??? Lic. en Industrial Administrativa.\n??? Lic. en Direcci??n y Administraci??n de Negocios Globales.\n??? Lic. en Comunicaci??n y Medios Audiovisuales.\n??? Lic. en Derecho.\n??? Lic. en Intervenci??n Educativa.\n??? Lic. en Direcci??n del Factor Humano.',
                ),
                _containerUniversidad(
                  'UNITESBA Universidad',
                  'assets/unitesba_logo.jpg',
                  '\n??? Lic. en Negocios Internacionales.\n??? Lic. en Derecho.\n??? Lic. en Administraci??n Tur??stica.\n??? Lic. en Gastronom??a.',
                ),
                _containerUniversidad(
                  'Universidad Pedag??gica Nacional',
                  'assets/upn_logo.png',
                  '\n??? Lic. en Pedagog??a.\n??? Lic. en Intervenci??n Educativa.\n??? Lic. en Psicolog??a Educativa.',
                ),
                _containerUniversidad(
                  'UTEC Celaya - Universidad Tecnol??gica del Centro de M??xico',
                  'assets/utec_logo.png',
                  '\n??? Lic. en Administraci??n Industrial.\n??? Lic. en Contadur??a P??blica.\n??? Lic. en Derecho.\n??? Lic. en Innovaci??n y Derecho Organizacional.\n??? Lic. en Mercadotecnia y Negocios Internacionales.',
                ),
                _containerUniversidad(
                  'Universidad Tecnol??gica Laja Baj??o',
                  'assets/utlb_logo.png',
                  '\n??? Lic. en administraci??n capital humano.\n??? Lic. en operaciones comerciales internacionales ??rea negocios internacionales.\n??? Ing. en log??stica comercial global.',
                ),
                _containerUniversidad(
                  'Universidad Virtual del Estado de Guanajuato UVEG',
                  'assets/uveg_logo.jpg',
                  '\n??? Lic. en Ciencias del Comportamiento Humano\n??? Lic. en Derecho.\n??? Lic. en Pedagog??a.\n??? Lic. en Administraci??n de la Mercadotecnia.\n??? Lic. en Administraci??n del Capital Humano.\n??? Lic. en Administraci??n de las Finanzas.\n??? Lic. en Gesti??n y Desarrollo Empresarial.\n??? Ing. en Gesti??n de Proyectos.\n??? Ing. en Gesti??n de Tecnolog??as de Informaci??n.',
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
