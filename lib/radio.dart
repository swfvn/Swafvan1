import 'package:flutter/material.dart';

class Radiobu extends StatefulWidget {
  const Radiobu({super.key});

  @override
  State<Radiobu> createState() => _RadiobuState();
}

class _RadiobuState extends State<Radiobu> {
  String selected ="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            RadioListTile(value: "value",
                groupValue: selected,
                onChanged: (value){
              setState(() {
                selected=value.toString();
              });
                })
          ],
        ),
      ),
    );
  }
}
