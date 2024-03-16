import 'package:flutter/material.dart';

class Imagenw extends StatefulWidget {
  const Imagenw({super.key});

  @override
  State<Imagenw> createState() => _ImagenwState();
}

class _ImagenwState extends State<Imagenw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar()
      ,
      body: Column(
        children: [

          Image.asset("img.png")

        ],
      ),
    );
  }
}
