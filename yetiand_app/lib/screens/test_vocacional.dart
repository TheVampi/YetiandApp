import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yetiand_app/screens/about_us.dart';
import 'package:yetiand_app/screens/home_page.dart';
import 'package:yetiand_app/screens/ramasDeEstudios/administrativas.dart';
import 'package:yetiand_app/screens/ramasDeEstudios/biologicas_y_agropecuarias.dart';
import 'package:yetiand_app/screens/ramasDeEstudios/ingenieria.dart';
import 'package:yetiand_app/screens/ramasDeEstudios/arte_y_diseno.dart';
import 'package:yetiand_app/screens/ramasDeEstudios/ciencias_sociales.dart';
import 'package:yetiand_app/screens/ramasDeEstudios/salud.dart';
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
  bool _estudiante = false;
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
                  size: 100,
                ),
                const Text('Test Vocacional',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontFamily: 'Century Gothic',
                        fontWeight: FontWeight.w600),
                        ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                            fontFamily: 'Century Gothic',
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
                            fontFamily: 'Century Gothic',
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
                            size: 50,
                            color: Colors.red,
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
                        'Dinos tu edad',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Century Gothic',
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
                      const Text(
                        'Por último, ¿Eres estudiante?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Century Gothic',
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.book,
                            size: 50,
                            color: Colors.red,
                          ),
                          Switch.adaptive(
                            value: _estudiante,
                            onChanged: (valorVariableSwitch) {
                              setState(() {
                                _estudiante = valorVariableSwitch;
                                print(
                                    _estudiante); //imprime en consola el valor seleccionado
                              });
                            },
                          ),
                          Text(
                            _estudiante
                                ? 'Soy estudiante'
                                : 'No soy estudiante',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 165, 5, 5),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          // ignore: void_checks
                          onPressed: () {
                            switch (_ramaEducativa) {
                              case 0:
                                return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ramaIngenieria(
                                      alumno: variablesTest(
                                        _nombre,
                                        _edad,
                                        _ramaEducativa,
                                        _obtenerEsEstudianteONo(_estudiante),
                                      ),
                                    ),
                                  ),
                                );
                              case 1:
                                return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ramaArteYDiseno(
                                      alumno: variablesTest(
                                        _nombre,
                                        _edad,
                                        _ramaEducativa,
                                        _obtenerEsEstudianteONo(_estudiante),
                                      ),
                                    ),
                                  ),
                                );
                              case 2:
                                return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ramaSalud(
                                      alumno: variablesTest(
                                        _nombre,
                                        _edad,
                                        _ramaEducativa,
                                        _obtenerEsEstudianteONo(_estudiante),
                                      ),
                                    ),
                                  ),
                                );
                              case 3:
                                return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ramaAdministracion(
                                      alumno: variablesTest(
                                        _nombre,
                                        _edad,
                                        _ramaEducativa,
                                        _obtenerEsEstudianteONo(_estudiante),
                                      ),
                                    ),
                                  ),
                                );
                              case 4:
                                return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ramaCienciasSociales(
                                      alumno: variablesTest(
                                        _nombre,
                                        _edad,
                                        _ramaEducativa,
                                        _obtenerEsEstudianteONo(_estudiante),
                                      ),
                                    ),
                                  ),
                                );
                              default:
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ramaBiologicasYAgropecuarias(
                                      alumno: variablesTest(
                                        _nombre,
                                        _edad,
                                        _ramaEducativa,
                                        _obtenerEsEstudianteONo(_estudiante),
                                      ),
                                    ),
                                  ),
                                );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 7, 136, 241),
                            //fixedSize: const Size(350, 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text(
                            '¡Comprueba tus resultados!',
                            style: TextStyle(
                              fontSize: 20,
                            ),
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutUs(),
            ),
          );
        },
        label: const Text('Acerca de Nosotros'),
        icon: const Icon(Icons.sentiment_satisfied_alt_rounded),
        backgroundColor: Colors.deepPurple,
      ),

    );
  }

  String _obtenerEsEstudianteONo(bool indice) {
    switch (indice) {
      case false:
        return "no eres estudiante";
    }
    return "eres estudiante";
  }

  String _obtenerRamaDeEstudios(int indice) {
    switch (indice) {
      case 0:
        return "Ciencias Exactas e Ingenierias";
      case 1:
        return "Arte, Arquitectura y Diseño";
      case 2:
        return "Ciencias de la Salud";
      case 3:
        return "Ciencias Económico Administrativas";
      case 4:
        return "Ciencias Sociales y Humanidades";
    }

    return "Ciencias Biologicas y Agropecuarias";
  }
}
