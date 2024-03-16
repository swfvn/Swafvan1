import 'package:flutter/material.dart';
void main(){
  runApp(Grid());
}
class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),
        body: GridView.extent(maxCrossAxisExtent: 400,
        crossAxisSpacing: 12,
          mainAxisSpacing: 23,
          children: [
          Container(
            color: Colors.black,
            height: 2500,
            width: 500,
          ),
            Container(
              color: Colors.indigoAccent,
              width: 250,
            )
          ],

        ),
      ),
    );
  }
}
