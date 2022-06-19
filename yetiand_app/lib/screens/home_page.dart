import 'package:flutter/material.dart';
import 'package:yetiand_app/screens/splash_screen.dart';
import 'package:yetiand_app/screens/test_vocacional.dart';
//Qutale esto uwu

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  //const HomePage({Key key}) : super(key: key);
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
          
          children: [
            Container(
              child: Row(
                children: const [
                  SizedBox(
                    width: 10.0,
                    height: 15.0,
                  ),
                  Expanded(
                    child: Text(
                      'UNIVERSIDADES DE CELAYA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Century Gothic',
                          backgroundColor: Color.fromARGB(255, 255, 229, 150)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
                    child: Container(
                      child: const Text('Universidad Lasallista Benavente',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Century Gothic')),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Image(
                          image: AssetImage('assets/benavente_logo.png'),
                          width: 100,
                        ),
                        SizedBox(
                          width: 10.0,
                          height: 15.0,
                        ),
                        Expanded(
                          child: Text(
                            '\n• Posgrado en Juicios Orales\n• Lic. en Derecho\n• Lic. en Ciencias Sociales\n• Lic. en Contaduría\n• Lic. en Relaciones Internacionales',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                    width: 10.0,
                  ),
                  const Center(
                    child: Text(
                      'Av. Anenecuilco No 101 Esq Eje Nor-Oriente, La Favorita, 38030 Celaya, Gto. \n 461 612 5252',
                      style: TextStyle(
                          fontFamily: 'Century Gothic',
                          backgroundColor: Color.fromARGB(255, 161, 175, 255),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                    width: 10.0,
                  ),
                ],
              ),
            ),
            //A PARTIR DE AQUI VAN LAS FUNCIONES PARA CADA UNIVERSIDAD
            _containerUniversidad(
                'CEDVA Celaya',
                'assets/cedva_logo.png',
                '\n• Ing. Mecánica Automotriz\n• Lic. en Enfermería y Obstetricia.\n• Lic en Cirujano Dentista.\n• Lic en Administración y Desarrollo de Negocios.\n• Lic en Administración Hotelera.\n• Lic en Administración de Negocios Internacionales.\n• Lic en Administración de Restaurantes.\n• Lic en Contaduría.\n• Lic en Derecho.\n• Lic en Diseño y Comunicacion Audiovisual.\n• Lic en Lengua Inglesa.\n• Lic en Pedagogía.\n• Lic en Turismo\n',
                'Blvrd Adolfo López Mateos 1555 Poniente, Renacimiento, 38040 Celaya, Gto. \n 461 615 4574'),
            _containerUniversidad(
                'Complejo Escolar Interactivo del Bajío',
                'assets/ceib_logo.jpg',
                '\n• Lic. en Derecho.\n• Lic. en Administración.\n• Ing. Industrial Administrativa.\n• Lic. en Administración y Logística Empresarial.\n• Lic. en Contaduría Pública y Finanzas.\n• Lic. en Criminología y Criminalística.\n• Lic. en Diseño y Desarrollo de Aplicaciones.\n• Lic. en Educación y Desarrollo Humano.\n• Lic. en Mercadotecnia y Publicidad',
                'Blvrd Adolfo López Mateos 1123 OTE, Centro, 38078 Celaya, Gto.\n 461 175 5774'),
            _containerUniversidad(
                'Centro Universitario Celsus',
                'assets/celsus_logo.png',
                '\n• Lic. en Administración y Desarrollo de Empresas.\n• Lic. en Contaduría y Gestión Empresarial.\n• Ing. en Biotecnología.\n• Ing. Industrial.\n• Ing. en Mecatrónica.',
                'Francisco I. Madero 609, Villa de los Reyes, 38000 Celaya, Gto.\n 461 215 4544'),
            _containerUniversidad(
                'Escuela de Enfermería y Obstetricia CMQ',
                'assets/cmq_logo.jpg',
                '\n• Lic. en Ciencias y Habilidades de Enfermería',
                'Blvrd Adolfo López Mateos 1000, Col. Centro, 38000 Celaya, Gto.\n 461 616 2343'),
            _containerUniversidad(
                'Conservatorio De Música Y Artes De Celaya',
                'assets/conservatorio_logo.png',
                '\n• Lic. en Canto. \n• Lic. en Piano.\n• Lic. en Canto Gregoriano.\n• Lic. en Educación Musical Escolar.\n• Lic. en Instrumentismo.\n• Lic. en Dirección Coral',
                'Madero 110 , Centro, CP 38000, Celaya, Guanajuato, México\n 461 613 8060'),
            _containerUniversidad(
                'Instituto Universitario del Centro de México',
                'assets/educem_logo.jpg',
                '\n• Lic. en Administración. \n• Lic. en Administración Turística y Hotelera.\n• Lic. en Ciencias de la Comunicación.\n• Lic. en Contaduría.\n• Lic. en Criminología. \n• Lic. en Derecho. \n• Lic. en Diseño de Imagen. \n• Lic. en Diseño de Modas y Calzado. \n• Lic. en Diseño Gráfico.\n• Lic. en Enfermería.\n• Lic. en Gastronomía.\n• Lic. en Mercadotecnia.\n• Lic. en Negocios Internacionales.\n• Lic. en Nutrición.\n• Lic. en Pedagogía.\n• Lic. en Psicología Clínica.\n• Lic. en Psicología Educativa.\n• Lic. en Psicología Social.\n• Lic. en Tecnologías de la Información.\n• Lic. en Trabajo Social.\n• Ing. Industrial.\n• Ing. Mecánica Automotriz.',
                'Manuel Doblado 211, Col. Centro, 38000 Celaya, Gto.\n 800 890 8236'),
            _containerUniversidad(
                'Instituto Firenze',
                'assets/firenze_logo.png',
                '\n• Lic. en Administración. \n• Lic. en Contabilidad.\n• Lic. en Criminología.\n• Lic. en Derecho.\n• Lic. en Pedagogía.',
                'Camino a San José de Guanajuato #202, Zona de Oro del Bajío.\n 461 216 2369'),
            _containerUniversidad(
                'IDCC Instituto Dr. Carlos Coqui Campus Celaya',
                'assets/idcc_logo.jpg',
                '\n• Lic. en Radiología e Imagen.',
                'Paseo de San Nicolás de Parra #101 Arboledas tercera sección Celaya Gto, 38060 Celaya, México.\n 461 303 7543'),
            _containerUniversidad(
                'Educación Nuevo Milenio',
                'assets/nuevomilenio_logo.jpg',
                '\n• Lic. en Administración en Recursos Humanos.\n• Lic. en Derecho.',
                'Miguel Hidalgo 305, Col. Centro, 38000 Celaya, Gto.\n 461 612 6950'),
            _containerUniversidad(
                'Centro Universitario Oxford',
                'assets/oxford_logo.png',
                '\n• Lic. en Pedagogía.',
                'Av Irrigación 550, Gobernadores, 38035 Celaya, Gto.\n 461 109 3315'),
            _containerUniversidad(
                'Centro Universitario Pablo Picasso',
                'assets/pablopicasso_logo.png',
                '\n• Lic. en Administración de Empresas.\n• Lic. en Contaduría Pública Fiscal.\n• Lic. en Derecho.\n• Lic. en Pedagogía.\n• Lic. en Criminología.\n• Ing. Industrial y de Sistemas ',
                'Vicente Riva Palacio 117, Zona Centro, 38000 Celaya, Gto.\n 461 612 1220'),
            _containerUniversidad(
                'Instituto Tecnológico de Roque',
                'assets/roque_logo.jpg',
                '\n• Ing. en Gestión Empresarial.\n• Ing. en Tecnologías de la Información y Comunicaciones.\n• Ing. Agrónoma.\n• Ing. en Industrias Alimentarias.\n• Ing. en Innovación Agrícola Sostenible.\n• Ing. Hidrológica.',
                'Carretera, Juventino Rosas - Celaya Km.8, 38110 Celaya, Gto.\n 461 175 5774'),
            _containerUniversidad(
                'Sabes Unideg Celaya',
                'assets/sabes_logo.png',
                '\n• Lic. en Mercadotecnia.\n• Lic. en Administración y Desarrollo de Negocios.\n• Ing. Industrial.\n• Ing. en Logística.\n• Ing. en Tecnologías de la Información.',
                'Manuel Orozco y Berra 101, Ciudad Industrial, 38010 Celaya, Gto.\n 461 611 7351'),
            _containerUniversidad(
                'Instituto Tecnológico de Celaya',
                'assets/tecno_logo.jpg',
                '\n• Lic. en Administración.\n• Ing. Ambiental.\n• Ing. Bioquímica.\n• Ing. Electrónica.\n• Ing. en Gestion Empresarial.\n• Ing. Industrial.\n• Ing. Mecánica.\n• Ing. Mecatrónica.',
                'Antonio García Cubas 600, Fovissste, 38010 Celaya, Gto.\n 461 611 7575'),
            _containerUniversidad(
                'UCA Universidad Continente Americano',
                'assets/uca_logo.png',
                '\n• Lic. en Administración de Empresas.\n• Lic. en Contaduría Pública.\n• Lic. en Derecho.\n• Lic. en Educación Preescolar.\n• Lic. en Educación Secundaria Especialidad en Español.\n• Lic. en Educación Secundaria Especialidad en Matemáticas. ',
                'Av Irrigación 430, Cuauhtémoc, 38034 Celaya, Gto.\n 461 608 8173'),
            _containerUniversidad(
                'Universidad Latina de México',
                'assets/ulm_logo.png',
                '\n• Lic. en Gerontología.\n• Ing. Industrial.\n• Arquitectura.\n• Cirujano Dentista.\n• Comercio Internacional.\n• Contaduría.\n• Derecho.\n• Diseño Gráfico. \n• Diseño de Interiores.\n• Psicología.\n• Medico Cirujano.\n• Nutrición.',
                'Av. San José No. 100, Col. San José de Torres, 38085 Celaya, Gto.\n 461 613 4385'),
            _containerUniversidad(
                'Universidad de Celaya',
                'assets/unicelaya_logo.png',
                '\n• Lic. en Psicología Sistémica.\n• Lic. en Industrial Administrativa.\n• Lic. en Medicina.\n• Lic. en Dirección y Administración de Negocios Globales.\n• Lic. en Comunicación y Medios Audiovisuales.\n• Lic. en Derecho.\n• Lic. en Intervención Educativa.\n• Lic. en Dirección del Factor Humano.',
                'Carretera Panamericana, Rancho Pinto km 269, 38080 Celaya, Gto.\n 461 613 9099'),
            _containerUniversidad(
                'UNITESBA Universidad',
                'assets/unitesba_logo.jpg',
                '\n• Lic. en Banca y Finanzas.\n• Lic. en Negocios Internacionales.\n• Ing. Industrial.\n• Ing. Civil.\n• Lic. Fisoterapia.\n• Lic. en Derecho.\n• Lic. en Administración Turística.\n• Lic. en Gastronomía.',
                'Camino a San José de Guanajuato Km. 4.3, 38110 Celaya, Gto.\n 461 611 6525'),
            _containerUniversidad(
                'Universidad Pedagógica Nacional',
                'assets/upn_logo.png',
                '\n• Lic. en Pedagogía.\n• Lic. en Intervención Educativa.\n• Lic. en Psicología Educativa.',
                'Av Irrigación 144A, Benito Juárez, 38030 Celaya, Gto.\n 461 612 5706'),
            _containerUniversidad(
                'UTEC Celaya - Universidad Tecnológica del Centro de México',
                'assets/utec_logo.png',
                '\n• Ing. en Diseño Industrial.\n• Ing. Industrial.\n• Lic. en Administración Industrial.\n• Lic. en Ciencias de la Informática.\n• Lic. en Contaduría Pública.\n• Lic. en Derecho.\n• Lic. en Innovación y Derecho Organizacional.\n• Lic. en Mercadotecnia y Negocios Internacionales.',
                'Av. Prol. Irrigación No. 414 Celaya, Gto.\n (461)-287-85-30, 287-85-31'),
            _containerUniversidad(
                'Universidad Tecnológica Laja Bajío',
                'assets/utlb_logo.png',
                '\n• Lic. mecatrónica área automatización.\n• Lic. mecatrónica área instalaciones eléctricas eficientes.\n• Lic. en administración capital humano.\n• Lic. en operaciones comerciales internacionales área negocios internacionales.\n• Ing. en logística comercial global.\n• Ing. en mecatrónica.',
                'Comunidad de, Av Rodolfo Neri Vela No.401, Predio “El Llanito, 38140 Santa María del Refugio Celaya, Gto.\n 461 287 87 90'),
            _containerUniversidad(
                'Universidad Virtual del Estado de Guanajuato UVEG',
                'assets/uveg_logo.jpg',
                '\n• Lic. en Ciencias del Comportamiento Humano\n• Lic. en Derecho.\n• Lic. en Pedagogía.\n• Ing. en Sistemas computacionales.\n• Lic. en Administración de la Mercadotecnia.\n• Lic. en Administración del Capital Humano.\n• Lic. en Administración de las Finanzas.\n• Lic. en Gestión y Desarrollo Empresarial.\n• Ing. en Gestión de Proyectos.\n• Ing. en Gestión de Tecnologías de Información.\n• Ing. en Industrial.',
                'Av. México - Japón S/N, Centro Comunitario Santa Rita (CEDECOM), 38030 Celaya, Gto.\n 461 608 6447'),
                const SizedBox(
                  height: 50,
                ),
            //AQUI ABAJO VAS A SUSTITUIR LOS VALORES DE ACUERDO A CADA UNIVERSIDAD
          ],
        ),
      ),
      //BOTON
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => testVocacional(),
            ),
          );
        },
        label: const Text('Test Vocacional'),
        icon: const Icon(Icons.fact_check),
        backgroundColor: Colors.pink,
      ),
      //FIN BOTON
    );
  }
}

Container _containerUniversidad(String nombreUni, String logoUni,
    String textoCarrera, String textoDomicilio) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
          child: Container(
            child: Text(nombreUni,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Century Gothic')),
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
                child: Text(textoCarrera,
                    style: const TextStyle(fontFamily: 'Poppins')),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            textoDomicilio,
            style: const TextStyle(
                fontFamily: 'Century Gothic',
                backgroundColor: Color.fromARGB(255, 161, 175, 255),
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}
