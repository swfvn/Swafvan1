import 'package:flutter/material.dart';
void main(){
  runApp(drawer());
}
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("drawer"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Container(
                  height: 100,
                  child: DrawerHeader(
                      decoration: BoxDecoration(
                        color:Colors.purple ,

                      ),
                      child: Text("Head",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                ),
                ListTile(
                  title: Text("option 1"),
                  leading: Icon(Icons.add),
                  onTap: () {

                  },
                ),
                ListTile(
                  title: Text("option 2"),
                  leading: Icon(Icons.add),
                  onTap: () {

                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}