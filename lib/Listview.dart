import 'package:flutter/material.dart';
void main(){
  runApp(Swfvn());
}
class Swfvn extends StatefulWidget {
  const Swfvn({super.key});

  @override
  State<Swfvn> createState() => _SwfvnState();
}

class _SwfvnState extends State<Swfvn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          iconTheme: IconThemeData.fallback(),
          shape: OutlineInputBorder(borderRadius: BorderRadius.zero),
          backgroundColor: Colors.green,
          title: Text("List view",style: TextStyle(fontSize: 32),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(children: [
            ListTile(
              title: Text("shabic"),
              subtitle: Text("swfvn"),
              leading: Icon(Icons.person),
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
              onTap: () {

              },
            ), ListTile(
              title: Text("reshna"),
              subtitle: Text("swfvn"),
              leading: Icon(Icons.person),
              shape: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              onTap: () {

              },

            ),
            ListTile(
              title: Text("athirek"),
              subtitle: Text("swfvn"),
              leading: Icon(Icons.person),
              shape: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              onTap: () {


              },
            ), ListTile(
              title: Text("vyshnav"),
              subtitle: Text("swfvn"),
              leading: Icon(Icons.person),
              shape: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              onTap: () {


              },
            ),
            ListTile(
              title: Text("swafvan"),
              subtitle: Text("swfvn"),
              leading: Icon(Icons.person),
              shape: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              onTap: () {


              },
            ),
            ListTile(
              title: Text("shahala"),
              subtitle: Text("swfvn"),
              leading: Icon(Icons.person),
              focusColor: Colors.brown,
              shape: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              onTap: () {

              },
            ),
          ]),
        ),
      ),
    );
  }
}
