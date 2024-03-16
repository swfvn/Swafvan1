import 'package:flutter/material.dart';
import 'package:proj1/bottombar/tab1/bar2.dart';
import 'package:proj1/bottombar/tab1/bar3.dart';
import 'package:proj1/bottombar/tab1/bar4.dart';
import 'package:proj1/bottombar/tab1/bar5.dart';
import 'package:proj1/bottombar/tab1/bar6.dart';
void main(){
  runApp(Bottomsd());
}
class Bottomsd extends StatefulWidget {
  const Bottomsd({super.key});

  @override
  State<Bottomsd> createState() => _BottomsdState();
}

class _BottomsdState extends State<Bottomsd> {
  int _currentindex =0;

  final List<Widget> _pages=[
    page1(),
    page2(),
    page3(),
    page4(),
    page5(),

  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Bottombar")),

        ),
        body: _pages[_currentindex],
        backgroundColor: Colors.blue,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.blue,
      
            onTap: (index){
            setState(() {
              _currentindex=index;
      
            });
            },
        items: [
      
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"
          ),
      
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: "Search"
          ),
      
          BottomNavigationBarItem(icon: Icon(Icons.add),
          label: "Add"
          ),
      
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),
          label: "Reels"
          ),
      
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: "profile"
          ),
      
      
      
        ],),
      
      ),
    );
  }
}









