import 'package:flutter/material.dart';

class Switchdsd extends StatefulWidget {
  const Switchdsd({super.key});

  @override
  State<Switchdsd> createState() => _SwitchdsdState();
}

class _SwitchdsdState extends State<Switchdsd> {
  bool isswitched=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(


        body: Column (
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Text(isswitched ? "on" : "off"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Switch(
                  value: isswitched,
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  onChanged: (value){
                setState(() {
                  isswitched=value;
                });
              }),
            )

          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(Switchdsd());
}