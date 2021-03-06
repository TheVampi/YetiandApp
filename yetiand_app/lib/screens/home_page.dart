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
                            '\n??? Posgrado en Juicios Orales\n??? Lic. en Derecho\n??? Lic. en Ciencias Sociales\n??? Lic. en Contadur??a\n??? Lic. en Relaciones Internacionales',
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
                '\n??? Ing. Mec??nica Automotriz\n??? Lic. en Enfermer??a y Obstetricia.\n??? Lic en Cirujano Dentista.\n??? Lic en Administraci??n y Desarrollo de Negocios.\n??? Lic en Administraci??n Hotelera.\n??? Lic en Administraci??n de Negocios Internacionales.\n??? Lic en Administraci??n de Restaurantes.\n??? Lic en Contadur??a.\n??? Lic en Derecho.\n??? Lic en Dise??o y Comunicacion Audiovisual.\n??? Lic en Lengua Inglesa.\n??? Lic en Pedagog??a.\n??? Lic en Turismo\n',
                'Blvrd Adolfo L??pez Mateos 1555 Poniente, Renacimiento, 38040 Celaya, Gto. \n 461 615 4574'),
            _containerUniversidad(
                'Complejo Escolar Interactivo del Baj??o',
                'assets/ceib_logo.jpg',
                '\n??? Lic. en Derecho.\n??? Lic. en Administraci??n.\n??? Ing. Industrial Administrativa.\n??? Lic. en Administraci??n y Log??stica Empresarial.\n??? Lic. en Contadur??a P??blica y Finanzas.\n??? Lic. en Criminolog??a y Criminal??stica.\n??? Lic. en Dise??o y Desarrollo de Aplicaciones.\n??? Lic. en Educaci??n y Desarrollo Humano.\n??? Lic. en Mercadotecnia y Publicidad',
                'Blvrd Adolfo L??pez Mateos 1123 OTE, Centro, 38078 Celaya, Gto.\n 461 175 5774'),
            _containerUniversidad(
                'Centro Universitario Celsus',
                'assets/celsus_logo.png',
                '\n??? Lic. en Administraci??n y Desarrollo de Empresas.\n??? Lic. en Contadur??a y Gesti??n Empresarial.\n??? Ing. en Biotecnolog??a.\n??? Ing. Industrial.\n??? Ing. en Mecatr??nica.',
                'Francisco I. Madero 609, Villa de los Reyes, 38000 Celaya, Gto.\n 461 215 4544'),
            _containerUniversidad(
                'Escuela de Enfermer??a y Obstetricia CMQ',
                'assets/cmq_logo.jpg',
                '\n??? Lic. en Ciencias y Habilidades de Enfermer??a',
                'Blvrd Adolfo L??pez Mateos 1000, Col. Centro, 38000 Celaya, Gto.\n 461 616 2343'),
            _containerUniversidad(
                'Conservatorio De M??sica Y Artes De Celaya',
                'assets/conservatorio_logo.png',
                '\n??? Lic. en Canto. \n??? Lic. en Piano.\n??? Lic. en Canto Gregoriano.\n??? Lic. en Educaci??n Musical Escolar.\n??? Lic. en Instrumentismo.\n??? Lic. en Direcci??n Coral',
                'Madero 110 , Centro, CP 38000, Celaya, Guanajuato, M??xico\n 461 613 8060'),
            _containerUniversidad(
                'Instituto Universitario del Centro de M??xico',
                'assets/educem_logo.jpg',
                '\n??? Lic. en Administraci??n. \n??? Lic. en Administraci??n Tur??stica y Hotelera.\n??? Lic. en Ciencias de la Comunicaci??n.\n??? Lic. en Contadur??a.\n??? Lic. en Criminolog??a. \n??? Lic. en Derecho. \n??? Lic. en Dise??o de Imagen. \n??? Lic. en Dise??o de Modas y Calzado. \n??? Lic. en Dise??o Gr??fico.\n??? Lic. en Enfermer??a.\n??? Lic. en Gastronom??a.\n??? Lic. en Mercadotecnia.\n??? Lic. en Negocios Internacionales.\n??? Lic. en Nutrici??n.\n??? Lic. en Pedagog??a.\n??? Lic. en Psicolog??a Cl??nica.\n??? Lic. en Psicolog??a Educativa.\n??? Lic. en Psicolog??a Social.\n??? Lic. en Tecnolog??as de la Informaci??n.\n??? Lic. en Trabajo Social.\n??? Ing. Industrial.\n??? Ing. Mec??nica Automotriz.',
                'Manuel Doblado 211, Col. Centro, 38000 Celaya, Gto.\n 800 890 8236'),
            _containerUniversidad(
                'Instituto Firenze',
                'assets/firenze_logo.png',
                '\n??? Lic. en Administraci??n. \n??? Lic. en Contabilidad.\n??? Lic. en Criminolog??a.\n??? Lic. en Derecho.\n??? Lic. en Pedagog??a.',
                'Camino a San Jos?? de Guanajuato #202, Zona de Oro del Baj??o.\n 461 216 2369'),
            _containerUniversidad(
                'IDCC Instituto Dr. Carlos Coqui Campus Celaya',
                'assets/idcc_logo.jpg',
                '\n??? Lic. en Radiolog??a e Imagen.',
                'Paseo de San Nicol??s de Parra #101 Arboledas tercera secci??n Celaya Gto, 38060 Celaya, M??xico.\n 461 303 7543'),
            _containerUniversidad(
                'Educaci??n Nuevo Milenio',
                'assets/nuevomilenio_logo.jpg',
                '\n??? Lic. en Administraci??n en Recursos Humanos.\n??? Lic. en Derecho.',
                'Miguel Hidalgo 305, Col. Centro, 38000 Celaya, Gto.\n 461 612 6950'),
            _containerUniversidad(
                'Centro Universitario Oxford',
                'assets/oxford_logo.png',
                '\n??? Lic. en Pedagog??a.',
                'Av Irrigaci??n 550, Gobernadores, 38035 Celaya, Gto.\n 461 109 3315'),
            _containerUniversidad(
                'Centro Universitario Pablo Picasso',
                'assets/pablopicasso_logo.png',
                '\n??? Lic. en Administraci??n de Empresas.\n??? Lic. en Contadur??a P??blica Fiscal.\n??? Lic. en Derecho.\n??? Lic. en Pedagog??a.\n??? Lic. en Criminolog??a.\n??? Ing. Industrial y de Sistemas ',
                'Vicente Riva Palacio 117, Zona Centro, 38000 Celaya, Gto.\n 461 612 1220'),
            _containerUniversidad(
                'Instituto Tecnol??gico de Roque',
                'assets/roque_logo.jpg',
                '\n??? Ing. en Gesti??n Empresarial.\n??? Ing. en Tecnolog??as de la Informaci??n y Comunicaciones.\n??? Ing. Agr??noma.\n??? Ing. en Industrias Alimentarias.\n??? Ing. en Innovaci??n Agr??cola Sostenible.\n??? Ing. Hidrol??gica.',
                'Carretera, Juventino Rosas - Celaya Km.8, 38110 Celaya, Gto.\n 461 175 5774'),
            _containerUniversidad(
                'Sabes Unideg Celaya',
                'assets/sabes_logo.png',
                '\n??? Lic. en Mercadotecnia.\n??? Lic. en Administraci??n y Desarrollo de Negocios.\n??? Ing. Industrial.\n??? Ing. en Log??stica.\n??? Ing. en Tecnolog??as de la Informaci??n.',
                'Manuel Orozco y Berra 101, Ciudad Industrial, 38010 Celaya, Gto.\n 461 611 7351'),
            _containerUniversidad(
                'Instituto Tecnol??gico de Celaya',
                'assets/tecno_logo.jpg',
                '\n??? Lic. en Administraci??n.\n??? Ing. Ambiental.\n??? Ing. Bioqu??mica.\n??? Ing. Electr??nica.\n??? Ing. en Gestion Empresarial.\n??? Ing. Industrial.\n??? Ing. Mec??nica.\n??? Ing. Mecatr??nica.',
                'Antonio Garc??a Cubas 600, Fovissste, 38010 Celaya, Gto.\n 461 611 7575'),
            _containerUniversidad(
                'UCA Universidad Continente Americano',
                'assets/uca_logo.png',
                '\n??? Lic. en Administraci??n de Empresas.\n??? Lic. en Contadur??a P??blica.\n??? Lic. en Derecho.\n??? Lic. en Educaci??n Preescolar.\n??? Lic. en Educaci??n Secundaria Especialidad en Espa??ol.\n??? Lic. en Educaci??n Secundaria Especialidad en Matem??ticas. ',
                'Av Irrigaci??n 430, Cuauht??moc, 38034 Celaya, Gto.\n 461 608 8173'),
            _containerUniversidad(
                'Universidad Latina de M??xico',
                'assets/ulm_logo.png',
                '\n??? Lic. en Gerontolog??a.\n??? Ing. Industrial.\n??? Arquitectura.\n??? Cirujano Dentista.\n??? Comercio Internacional.\n??? Contadur??a.\n??? Derecho.\n??? Dise??o Gr??fico. \n??? Dise??o de Interiores.\n??? Psicolog??a.\n??? Medico Cirujano.\n??? Nutrici??n.',
                'Av. San Jos?? No. 100, Col. San Jos?? de Torres, 38085 Celaya, Gto.\n 461 613 4385'),
            _containerUniversidad(
                'Universidad de Celaya',
                'assets/unicelaya_logo.png',
                '\n??? Lic. en Psicolog??a Sist??mica.\n??? Lic. en Industrial Administrativa.\n??? Lic. en Medicina.\n??? Lic. en Direcci??n y Administraci??n de Negocios Globales.\n??? Lic. en Comunicaci??n y Medios Audiovisuales.\n??? Lic. en Derecho.\n??? Lic. en Intervenci??n Educativa.\n??? Lic. en Direcci??n del Factor Humano.',
                'Carretera Panamericana, Rancho Pinto km 269, 38080 Celaya, Gto.\n 461 613 9099'),
            _containerUniversidad(
                'UNITESBA Universidad',
                'assets/unitesba_logo.jpg',
                '\n??? Lic. en Banca y Finanzas.\n??? Lic. en Negocios Internacionales.\n??? Ing. Industrial.\n??? Ing. Civil.\n??? Lic. Fisoterapia.\n??? Lic. en Derecho.\n??? Lic. en Administraci??n Tur??stica.\n??? Lic. en Gastronom??a.',
                'Camino a San Jos?? de Guanajuato Km. 4.3, 38110 Celaya, Gto.\n 461 611 6525'),
            _containerUniversidad(
                'Universidad Pedag??gica Nacional',
                'assets/upn_logo.png',
                '\n??? Lic. en Pedagog??a.\n??? Lic. en Intervenci??n Educativa.\n??? Lic. en Psicolog??a Educativa.',
                'Av Irrigaci??n 144A, Benito Ju??rez, 38030 Celaya, Gto.\n 461 612 5706'),
            _containerUniversidad(
                'UTEC Celaya - Universidad Tecnol??gica del Centro de M??xico',
                'assets/utec_logo.png',
                '\n??? Ing. en Dise??o Industrial.\n??? Ing. Industrial.\n??? Lic. en Administraci??n Industrial.\n??? Lic. en Ciencias de la Inform??tica.\n??? Lic. en Contadur??a P??blica.\n??? Lic. en Derecho.\n??? Lic. en Innovaci??n y Derecho Organizacional.\n??? Lic. en Mercadotecnia y Negocios Internacionales.',
                'Av. Prol. Irrigaci??n No. 414 Celaya, Gto.\n (461)-287-85-30, 287-85-31'),
            _containerUniversidad(
                'Universidad Tecnol??gica Laja Baj??o',
                'assets/utlb_logo.png',
                '\n??? Lic. mecatr??nica ??rea automatizaci??n.\n??? Lic. mecatr??nica ??rea instalaciones el??ctricas eficientes.\n??? Lic. en administraci??n capital humano.\n??? Lic. en operaciones comerciales internacionales ??rea negocios internacionales.\n??? Ing. en log??stica comercial global.\n??? Ing. en mecatr??nica.',
                'Comunidad de, Av Rodolfo Neri Vela No.401, Predio ???El Llanito, 38140 Santa Mar??a del Refugio Celaya, Gto.\n 461 287 87 90'),
            _containerUniversidad(
                'Universidad Virtual del Estado de Guanajuato UVEG',
                'assets/uveg_logo.jpg',
                '\n??? Lic. en Ciencias del Comportamiento Humano\n??? Lic. en Derecho.\n??? Lic. en Pedagog??a.\n??? Ing. en Sistemas computacionales.\n??? Lic. en Administraci??n de la Mercadotecnia.\n??? Lic. en Administraci??n del Capital Humano.\n??? Lic. en Administraci??n de las Finanzas.\n??? Lic. en Gesti??n y Desarrollo Empresarial.\n??? Ing. en Gesti??n de Proyectos.\n??? Ing. en Gesti??n de Tecnolog??as de Informaci??n.\n??? Ing. en Industrial.',
                'Av. M??xico - Jap??n S/N, Centro Comunitario Santa Rita (CEDECOM), 38030 Celaya, Gto.\n 461 608 6447'),
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
