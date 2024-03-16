import 'package:flutter/material.dart';
void main(){
  runApp(Aweoeo());
}
class Aweoeo extends StatelessWidget {
  const Aweoeo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData.fallback(),
          backgroundColor: Colors.redAccent,
          title: Text(
            "options"
          ),
          actions: [
            PopupMenuButton(itemBuilder:

            (BuildContext context)=>[
              PopupMenuItem(
                  value: "one",

                  child: Text("one")
              ),

              PopupMenuItem(
                  value: "two",
                  child: Text("two")
              ),
              PopupMenuItem(
                  value: "three",
                  child: Text("three")
              ),


            ] )
          ],
        ),
      ),
    );
  }
}
