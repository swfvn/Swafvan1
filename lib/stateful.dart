import 'package:flutter/material.dart';

class statefull extends StatefulWidget {
  const statefull({super.key});

  @override
  State<statefull> createState() => _statefullState();
}

class _statefullState extends State<statefull> {
  var nme="swafvan";
  @override

  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(nme),
          ElevatedButton(onPressed: (){
          setState(() {
            nme="fffff";
          });
          }, child: Text("ok"))


        ],
      ),
    );
  }
}
