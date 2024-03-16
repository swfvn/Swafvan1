import 'package:flutter/material.dart';
void main(){
  runApp(Abcd());
}

class Abcd extends StatelessWidget {
  const Abcd({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Drbutton() ,
    );
  }
}

class Drbutton extends StatefulWidget {
  const Drbutton({super.key});

  @override
  State<Drbutton> createState() => _DrbuttonState();
}

class _DrbuttonState extends State<Drbutton> {
  String? selectedvalue="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Swafvan")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Selected value: ${selectedvalue  ?? ""}"
              ),
              SizedBox(height: 20,),
              DropdownButton(
                  value: selectedvalue,
                  style: TextStyle(color: Colors.blueAccent),
                   onChanged: (String? newvalue){
                    setState(() {
                      selectedvalue=newvalue;
                    }
                    );
                   },
                items: <String>["","choose your state","option 1","option2","option 3"].
                map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem(
                      value: value,

                      child:Text(value) );
                }).toList(),
                   )

            ],
          ),
        ),


    );
  }
}
