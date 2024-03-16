import 'package:flutter/material.dart';
void main(){
  runApp(Circle());
}

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  bool show=true;
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Center(child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/image/user.jpg"),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              labelText:"Email ID",
              hintText: "Enter your Email-ID",
              suffixIcon: Icon(Icons.email_outlined),
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: show,
              decoration: InputDecoration(

                labelText: "Password",
                hintText: "Enter your Password",
                suffixIcon: IconButton(onPressed: () {
                  setState(() {
                    show=! show;
                  });
                }, icon: Icon(show? Icons.visibility : Icons.visibility_off)),
              ),),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(children: [
            Checkbox(value: ischecked, onChanged: (value) {
              setState(() {
                ischecked=value!;
              });
            },),
            Text("Remember me"),
            Padding(padding: EdgeInsets.only(left: 135)),
            TextButton(onPressed: () {

            }, child: Text("Forgot Password"))
          ],),

          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            style:ElevatedButton.styleFrom(primary: Colors.deepPurple,minimumSize: Size(400, 50),shape:LinearBorder()),

            onPressed: () {
            }, child: Text("LOGIN",style:TextStyle(color: Colors.white),
          ),

          )
        ],),
      ),
    );
  }
}