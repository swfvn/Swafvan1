import 'package:flutter/material.dart';
void main(){
  runApp(Abcd());
}
class Abcd extends StatefulWidget {
  const Abcd({super.key});

  @override
  State<Abcd> createState() => _AbcdState();
}

class _AbcdState extends State<Abcd> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gridview"),
          backgroundColor: Colors.cyanAccent,

        ),
        body: GridView.count(
            crossAxisCount:5,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
        children:
          List.generate(100
              , (index) => Container(


                color: Colors.lightGreen,
                child: Column(
                  children: [
                    Image.asset("assets/images/abcde.jpeg",width: 60,height: 60,),
                    Text(
                      "Item $index",
                      style: TextStyle(color: Colors.white),



                    ),
                  ],
                ),
              ))
        ,),


      ),
    );
  }
}
