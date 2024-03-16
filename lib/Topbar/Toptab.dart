import 'package:flutter/material.dart';


void main(){
  runApp(Swfvn21());
}
class Swfvn21 extends StatefulWidget {
  const Swfvn21({super.key});

  @override
  State<Swfvn21> createState() => _Swfvn21State();
}

class _Swfvn21State extends State<Swfvn21> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      DefaultTabController(length: 4,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.green,
              title:

              Row(
                children: [
                  Text("Whatsapp",style: TextStyle(
                    color: Colors.white,
                    fontSize: 26
                  ),),
                ],
              ),
              bottom: TabBar(tabs:
              [
                Tab(icon: Icon(Icons.group,),),
                Tab(text: "Chats",),
                Tab(text: "Updates",),
                Tab(text: "Calls",),
              ]),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                ),
                Icon(Icons.search,color: Colors.white),
                PopupMenuButton(
                    iconColor: Colors.white,
                    itemBuilder:
                    (BuildContext context)=>[
                      PopupMenuItem(child:
                      Text("New group")),
                      PopupMenuItem(child:
                      Text("New brodcast")),
                      PopupMenuItem(child:
                      Text("Linked devices")),
                      PopupMenuItem(child:
                      Text("Starred messages")),
                      PopupMenuItem(child:
                      Text("Payments")),
                      PopupMenuItem(child:
                      Text("Settings"))

                      ])
              ],
            ),


          )
      ),
    );
  }
}
