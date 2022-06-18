import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yetiand_app/src/clase/variables_test_vocacional.dart';

class testVocacional extends StatefulWidget {
  //testVocacional({Key key}) : super(key: key);

  @override
  State<testVocacional> createState() => _testVocacionalState();
}

class _testVocacionalState extends State<testVocacional> {
  String _nombre = "";
  String _edad = "";
  int _ramaEducativa = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 232, 247),
        centerTitle: true,
        title: const Text('Yetiand'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.fact_check,
                  color: Colors.red,
                  size: 150,
                ),
                const Text('Test Vocacional',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.w600)),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '¿Con quién tenemos el gusto?...',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (valorDelTextInput) {
                          setState(() {
                            _nombre = valorDelTextInput;
                            print(
                                _nombre); //imprime en consola el valor seleccionado
                          });
                        },
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.red,
                          ),
                          labelText: 'Tu Nombre',
                          border: OutlineInputBorder(),
                          isDense: false,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        '¿Qué rama de estudios te gusta más?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.ballot_rounded,
                            color: Colors.blue,
                            size: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          DropdownButton<int>(
                              items: const <DropdownMenuItem<int>>[
                                DropdownMenuItem(
                                  value: 0,
                                  child: Text('Ciencias Exactas e Ingenierias'),
                                ),
                                DropdownMenuItem(
                                  value: 1,
                                  child: Text('Arte, Arquitectura y Diseño'),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text('Ciencias de la Salud'),
                                ),
                                DropdownMenuItem(
                                  value: 3,
                                  child: Text(
                                      'Ciencias Económico Administrativas'),
                                ),
                                DropdownMenuItem(
                                  value: 4,
                                  child:
                                      Text('Ciencias Sociales y Humanidades'),
                                ),
                                DropdownMenuItem(
                                  value: 5,
                                  child: Text(
                                      'Ciencias Biologicas y Agropecuarias'),
                                ),
                              ],
                              value: _ramaEducativa,
                              onChanged: (valorVariableDropdown) {
                                setState(() {
                                  _ramaEducativa = valorVariableDropdown;
                                  print(
                                      _ramaEducativa); //imprime en consola el valor seleccionado
                                });
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        'Por último, dinos tu edad',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (valorVariableEdad) {
                          setState(() {
                            _edad = valorVariableEdad;
                            print(
                                _edad); //imprime en consola el valor seleccionado
                          });
                        },
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.cake,
                            size: 50,
                            color: Colors.red,
                          ),
                          labelText: 'Tu Edad',
                          border: OutlineInputBorder(),
                          isDense: false,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child:   const ElevatedButton(
                          child: Text(
                            'Conoce tus resultados',
                            style: TextStyle(color: Colors.white, fontSize: 16,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
