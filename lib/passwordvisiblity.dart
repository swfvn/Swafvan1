import 'package:flutter/material.dart';
void main(){
  runApp(Appwidget());
}

class Appwidget extends StatefulWidget {
  const Appwidget({super.key});

  @override
  State<Appwidget> createState() => _AppwidgetState();
}

class _AppwidgetState extends State<Appwidget> {
  bool app=true;
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text("Login page")),

        ),
        body: Column(children: [
          Center(

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: app,
                decoration: InputDecoration(
                    labelText: "PASSWORD",
                    hintText: "Enter your password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                    suffixIcon:IconButton(onPressed: () {
                      setState(() {
                        app=! app;
                      });
                    }, icon: Icon(app? Icons.visibility :Icons.visibility_off))
                ),),
            ),
          ),
          Row(
            children: [
              Checkbox(value: ischecked, onChanged: (value) {
                setState(() {
                  ischecked=value!;
                });
              },),
              Text("Show Password"),
            ],
          )
        ],),
      ),
    );
  }
}