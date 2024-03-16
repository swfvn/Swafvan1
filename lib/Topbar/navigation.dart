import 'package:flutter/material.dart';
void main(){
  runApp(Nav());
}
class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey,

        ),
        body: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: TextField(decoration:
                InputDecoration(
                  labelText: "Login",
                  labelStyle:TextStyle(color: Colors.grey),
                  enabledBorder:OutlineInputBorder(
                    gapPadding: 34.5,
                    borderSide: BorderSide(color: Colors.lightBlue),borderRadius:
                      BorderRadius.circular(23.1),
                  ),
                ),),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
