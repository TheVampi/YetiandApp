import 'package:flutter/material.dart';

class LoadPage extends StatelessWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.zero,
        child:
        const Image(
          image: AssetImage('assets/gif/Lil_Yachty_cropped.jpg'),
      ),
      )
    );
  }
}