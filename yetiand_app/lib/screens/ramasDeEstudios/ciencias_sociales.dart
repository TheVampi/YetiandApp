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
                      ' años',
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
                  'Estan son las carreras relacionadas, ¡Escoge las que más te gusten! ',
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
                  '\n• Lic en Administración y Desarrollo de Negocios.\n• Lic en Administración Hotelera.\n• Lic en Administración de Negocios Internacionales.\n• Lic en Administración de Restaurantes.\n• Lic en Contaduría.\n• Lic en Derecho.\n• Lic en Diseño y Comunicacion Audiovisual.\n• Lic en Pedagogía.\n• Lic en Turismo\n',
                ),
                _containerUniversidad(
                  'Complejo Escolar Interactivo del Bajío',
                  'assets/ceib_logo.jpg',
                  '\n• Lic. en Derecho.\n• Lic. en Administración.\n• Ing. Industrial Administrativa.\n• Lic. en Administración y Logística Empresarial.\n• Lic. en Contaduría Pública y Finanzas.\n• Lic. en Educación y Desarrollo Humano.\n• Lic. en Mercadotecnia y Publicidad',
                ),
                _containerUniversidad(
                  'Centro Universitario Celsus',
                  'assets/celsus_logo.png',
                  '\n• Lic. en Administración y Desarrollo de Empresas.\n• Lic. en Contaduría y Gestión Empresarial.\n• Ing. en Mecatrónica.',
                ),
                _containerUniversidad(
                  'Conservatorio De Música Y Artes De Celaya',
                  'assets/conservatorio_logo.png',
                  '\n• Lic. en Educación Musical Escolar.',
                ),
                _containerUniversidad(
                  'Instituto Universitario del Centro de México',
                  'assets/educem_logo.jpg',
                  '\n• Lic. en Administración. \n• Lic. en Administración Turística y Hotelera.\n• Lic. en Ciencias de la Comunicación.\n• Lic. en Contaduría.\n• Lic. en Derecho. \n• Lic. en Gastronomía.\n• Lic. en Mercadotecnia.\n• Lic. en Negocios Internacionales.\n• Lic. en Pedagogía.\n• Lic. en Psicología Clínica.\n• Lic. en Psicología Educativa.\n• Lic. en Psicología Social.\n• Lic. en Trabajo Social.',
                ),
                _containerUniversidad(
                  'Instituto Firenze',
                  'assets/firenze_logo.png',
                  '\n• Lic. en Administración. \n• Lic. en Contabilidad.\n• Lic. en Criminología.\n• Lic. en Derecho.\n• Lic. en Pedagogía.',
                ),
                _containerUniversidad(
                  'Educación Nuevo Milenio',
                  'assets/nuevomilenio_logo.jpg',
                  '\n• Lic. en Administración en Recursos Humanos.\n• Lic. en Derecho.',
                ),
                _containerUniversidad(
                  'Centro Universitario Oxford',
                  'assets/oxford_logo.png',
                  '\n• Lic. en Pedagogía.',
                ),
                _containerUniversidad(
                  'Centro Universitario Pablo Picasso',
                  'assets/pablopicasso_logo.png',
                  '\n• Lic. en Administración de Empresas.\n• Lic. en Contaduría Pública Fiscal.\n• Lic. en Derecho.\n• Lic. en Pedagogía.\n• Lic. en Criminología. ',
                ),
                _containerUniversidad(
                  'Instituto Tecnológico de Roque',
                  'assets/roque_logo.jpg',
                  '\n• Ing. en Gestión Empresarial.\n• Ing. en Tecnologías de la Información y Comunicaciones.',
                ),
                _containerUniversidad(
                  'Sabes Unideg Celaya',
                  'assets/sabes_logo.png',
                  '\n• Lic. en Mercadotecnia.\n• Lic. en Administración y Desarrollo de Negocios.',
                ),
                _containerUniversidad(
                  'Instituto Tecnológico de Celaya',
                  'assets/tecno_logo.jpg',
                  '\n• Lic. en Administración.\n• Ing. en Gestion Empresarial.',
                ),
                _containerUniversidad(
                  'UCA Universidad Continente Americano',
                  'assets/uca_logo.png',
                  '\n• Lic. en Administración de Empresas.\n• Lic. en Contaduría Pública.\n• Lic. en Derecho.\n• Lic. en Educación Preescolar.\n• Lic. en Educación Secundaria Especialidad en Español.\n• Lic. en Educación Secundaria Especialidad en Matemáticas. ',
                ),
                _containerUniversidad(
                  'Universidad Latina de México',
                  'assets/ulm_logo.png',
                  '\n• Lic. en Gerontología.\n• Comercio Internacional.\n• Contaduría.\n• Derecho.\n• Psicología.',
                ),
                _containerUniversidad(
                  'Universidad de Celaya',
                  'assets/unicelaya_logo.png',
                  '\n• Lic. en Psicología Sistémica.\n• Lic. en Industrial Administrativa.\n• Lic. en Dirección y Administración de Negocios Globales.\n• Lic. en Comunicación y Medios Audiovisuales.\n• Lic. en Derecho.\n• Lic. en Intervención Educativa.\n• Lic. en Dirección del Factor Humano.',
                ),
                _containerUniversidad(
                  'UNITESBA Universidad',
                  'assets/unitesba_logo.jpg',
                  '\n• Lic. en Negocios Internacionales.\n• Lic. en Derecho.\n• Lic. en Administración Turística.\n• Lic. en Gastronomía.',
                ),
                _containerUniversidad(
                  'Universidad Pedagógica Nacional',
                  'assets/upn_logo.png',
                  '\n• Lic. en Pedagogía.\n• Lic. en Intervención Educativa.\n• Lic. en Psicología Educativa.',
                ),
                _containerUniversidad(
                  'UTEC Celaya - Universidad Tecnológica del Centro de México',
                  'assets/utec_logo.png',
                  '\n• Lic. en Administración Industrial.\n• Lic. en Contaduría Pública.\n• Lic. en Derecho.\n• Lic. en Innovación y Derecho Organizacional.\n• Lic. en Mercadotecnia y Negocios Internacionales.',
                ),
                _containerUniversidad(
                  'Universidad Tecnológica Laja Bajío',
                  'assets/utlb_logo.png',
                  '\n• Lic. en administración capital humano.\n• Lic. en operaciones comerciales internacionales área negocios internacionales.\n• Ing. en logística comercial global.',
                ),
                _containerUniversidad(
                  'Universidad Virtual del Estado de Guanajuato UVEG',
                  'assets/uveg_logo.jpg',
                  '\n• Lic. en Ciencias del Comportamiento Humano\n• Lic. en Derecho.\n• Lic. en Pedagogía.\n• Lic. en Administración de la Mercadotecnia.\n• Lic. en Administración del Capital Humano.\n• Lic. en Administración de las Finanzas.\n• Lic. en Gestión y Desarrollo Empresarial.\n• Ing. en Gestión de Proyectos.\n• Ing. en Gestión de Tecnologías de Información.',
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
