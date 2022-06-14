import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            SizedBox(
              height: 600,
              child: SingleChildScrollView(
                child: Form(
                  child: Column(children: <Widget>[
                    _infouni('assets/benavente_logo.png',
                        '/n Licenciatura en Ciencias de la Comunicación. /n Licenciatura en Relaciones Internacionales. /n Licenciatura en Contaduría. /n Licenciatura en Derecho.'),
                    const SizedBox(
                      height: 10,
                    ),
                    _crearInput1(),
                    const SizedBox(
                      height: 10,
                    ),
                    _crearInput2(),
                    const SizedBox(
                      height: 10,
                    ),
                    _crearInput3(),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
      //BOTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SystemNavigator.pop();
        },
        child: const Icon(Icons.home_rounded),
      ),
      //FIN BOTON
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Nombre',
          hintText: 'Name',
        ),
      ),
    );
  }

  Widget _crearInput2() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Contraseña',
          hintText: 'Password',
        ),
      ),
    );
  }

  Widget _crearInput3() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email_rounded),
          hintText: 'Mail',
        ),
      ),
    );
  }

  Container _infouni(String LOGOUNI, String CARRERAS) {
    return Container(
      margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
      child: Row(
        children: [
          Image(
            image: AssetImage(LOGOUNI),
            width: 140,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(CARRERAS),
          ),
        ],
      ),
    );
  }
}
