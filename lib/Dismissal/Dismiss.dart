import 'package:flutter/material.dart';
void main(){
  runApp(Abcde());
}
class Abcde extends StatelessWidget {
  const Abcde({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Swipcancl(),
    );
  }
}

class Swipcancl extends StatefulWidget {
  const Swipcancl({super.key});

  @override
  State<Swipcancl> createState() => _SwipcanclState();
}

class _SwipcanclState extends State<Swipcancl> {
  List<String> items=List.generate(40, (index) => "item ${index +1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ABC")),
        backgroundColor: Colors.grey,

      ),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context, index){
            final item=items[index];
            return Dismissible(
                key: Key(item),
                background: Container(
                  color: Colors.blue,

                 child: Icon(Icons.delete, color: Colors.white),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                ),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction){
                  setState(() {
                    items.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("$item dismissed"),
                      duration: Duration(seconds: 2),
                      action: SnackBarAction(label: "UNDO",
                          onPressed: () {
                            setState(() {
                              items.insert(index, item);
                            });
                          },),

                      ),);
              },
              child: ListTile(title:
                Text(item),
                onTap: () => items,
                autofocus: bool.fromEnvironment("wsdc"),
              )


            );

          }),
    );
  }
}
