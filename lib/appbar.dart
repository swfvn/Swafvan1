import 'package:flutter/material.dart';

class Appbarwidget extends StatefulWidget {
  const Appbarwidget({super.key});

  @override
  State<Appbarwidget> createState() => _AppbarwidgetState();
}

class _AppbarwidgetState extends State<Appbarwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal

        ,
        appBar: AppBar(
          title:Text("Swafvan" ,style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 36,backgroundColor: Colors.white70,fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(),
    );
  }
}
