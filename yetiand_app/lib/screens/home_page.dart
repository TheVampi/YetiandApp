import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
      centerTitle: true,
      title: const Text('Yetiand'),
    ));
  }
}
