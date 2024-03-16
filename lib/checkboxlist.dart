import 'package:flutter/material.dart';

class Checkbox1 extends StatefulWidget {
  const Checkbox1({super.key});

  @override
  State<Checkbox1> createState() => _Checkbox1State();

  _Checkbox1State() {}
}

class _CheckboxState extends State<Checkbox> {
  @override
  Widget build(BuildContext context) {
    bool ischecked=false;
    bool ischecked1=false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            CheckboxListTile(value: ischecked,
                onChanged: (value){
              setState(() {
                ischecked=value!;

              });
                }),
            Checkbox(value: ischecked1, onChanged: (value){
              setState(() {
                ischecked1=value!;

              });
            })

          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(Checkbox1());
}