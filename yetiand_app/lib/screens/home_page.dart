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
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
                    child: Container(
                      child: const Text('Instituto Tecnologico de Celaya',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
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
                              '\n• Ing. Ambiental.\n• Ing. Bioquimica\n• Ing. Electronica\n• Ing. Gestion Empresarial\n• Sistemas Computacionales\n• Ing. Industrial\n• Ing. Mecanica\n• Ing. Mecatronica\n• Ing. Quimica\n• Lic. Administracion de Empresas'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Center(
                    child: Text(
                        'AVENIDA TECNOLOGICO E IRRIGACION NUMERO EXTERIOR: SN, COLONIA ALFREDO VAZQUEZ BONFIL 4616117575'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            //A PARTIR DE AQUI VAN LAS FUNCIONES PARA CADA UNIVERSIDAD
            _containerUniversidad(
                'Instituto Tecnologico de Roque',
                'assets/roque_logo.jpg',
                '\n• Licenciatura en Ciencias de la Comunicación.\n• Licenciatura en Relaciones Internacionales.\n• Licenciatura en Contaduría.\n• Licenciatura en Derecho.',
                'KILOMETRO 8 NUMERO CARRETERA CELAYA-JUVENTINO ROSAS 4616115903'),

            //AQUI ABAJO VAS A SUSTITUIR LOS VALORES DE ACUERDO A CADA UNIVERSIDAD
            
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

Container _containerUniversidad(String nombreUni, String logoUni,
    String textoCarrera, String textoDomicilio) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
          child: Container(
            child: Text(nombreUni,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                child: Text(textoCarrera),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(textoDomicilio),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    ),
  );
}
