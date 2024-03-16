import 'package:flutter/material.dart';
void main()
{
  runApp(Textwidget());
}class Textwidget extends StatefulWidget {
  const Textwidget({super.key});

  @override
  State<Textwidget> createState() => _TextwidgetState();
}

class _TextwidgetState extends State<Textwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Widget",style: TextStyle(color: Colors.blueGrey,
            fontSize: 34,backgroundColor: Colors.white,
            fontWeight: FontWeight.bold)),
      ),
      body:   Column(
        children: [
          Center( child:
          Text("Swafvan",
            style: TextStyle(
                fontSize: 45,
                backgroundColor: Colors.black12,
                fontWeight: FontWeight.bold),)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                label: Text("Username"),
                hintText: "enter your name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(300),
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                label: Text("password"),
                hintText: "enter your password",
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(300),
                )
              ),
              obscureText: true,
            ),
          ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
      decoration: InputDecoration(
      label: Text("confirm password"),
      hintText: "confirm your password",
      suffixIcon: Icon(Icons.lock),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(300),

      )
      ),
        obscureText: true,

      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
      decoration: InputDecoration(
      label: Text("EMAIL"),
      hintText: "Enter your email",
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(300),

      )
      )
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
      decoration: InputDecoration(
      label: Text("Mobile"),
      hintText: "Enter your number",
      prefixIcon: Icon(Icons.phone),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(300),

      )
      )
      ),
    ),
          ElevatedButton(onPressed:  (){
          },style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ), child: Text("sign in",style: TextStyle(color: Colors.cyan),),
          ),
    ]
    )
    );
  }
}

