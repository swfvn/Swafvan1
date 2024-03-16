import 'package:flutter/material.dart';
void main(){
  runApp(Buttons());
}
class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.add)),

          Spacer(),

          OutlinedButton(onPressed: () {

          }, child:Text("SUBMIT")),
          Divider(thickness: 3,),
          TextButton(onPressed: () {

          }, child: Text("Click here")),
          ElevatedButton(onPressed: () {
          }, child: Text("sign up",style: TextStyle(color: Colors.red),
          ),
            style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
          )

        ],),
      ),
    );
  }
}