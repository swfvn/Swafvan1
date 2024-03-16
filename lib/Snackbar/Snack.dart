import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({super.key});

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("HELLO WORLD")),

      ),
      body: Builder(builder: (BuildContext context){
        return Center(
          child: ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content:
              Text("Please enter your Email ID"),
              ),
            );
          }, child:Text("Enter your Email"),
          ),
        );

      }),

    );
  }
}
