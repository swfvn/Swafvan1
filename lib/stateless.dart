import 'package:flutter/material.dart';

class Statelesswidget extends StatelessWidget {
  const Statelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    String name="swafvan";
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Text(name),
          ElevatedButton(onPressed:(){
            name="safwan m";
          },
            child: Text("ok")
          )

        ],
      ),
    );


  }
}
