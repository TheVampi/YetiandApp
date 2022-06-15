import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class testVocacional extends StatefulWidget {
  //testVocacional({Key key}) : super(key: key);

  @override
  State<testVocacional> createState() => _testVocacionalState();
}

class _testVocacionalState extends State<testVocacional> {
  final _keyForm = GlobalKey<FormState>();

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
            child: Form(
              key: _keyForm,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.fact_check,
                    color: Colors.blue,
                    size: 150,
                  ),
                  const SizedBox(),
                  const Text('Test Vocacional',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
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
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.calendar_view_day),
                            labelText: 'Tu nombre',
                            border: OutlineInputBorder(),
                            isDense: false,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: const ElevatedButton(
                            child: Text(
                              'Conoce tus resultados',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
      ),
    );
  }
}
