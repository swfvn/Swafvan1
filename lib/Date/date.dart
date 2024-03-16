import 'package:flutter/material.dart';
void main(){
  runApp(Dateselect());
}
class Dateselect extends StatefulWidget {
  const Dateselect({super.key});

  @override
  State<Dateselect> createState() => _dateselectState();
}

class _dateselectState extends State<Dateselect> {
  DateTime selectedDate=DateTime.now();

  Future<void>selectDate(BuildContext context)async {
    final DateTime? picked= await showDatePicker(context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1970), lastDate:DateTime(2100) );

    if(picked!= null && picked != selectedDate){
      setState(() {
        selectedDate=picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
      Scaffold(
      appBar: AppBar(
        title: Text("DATE PICKER"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: TextEditingController(
              text: "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
            ),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Select Date",
                suffixIcon: IconButton(onPressed: () => selectDate(context),
                    icon: Icon(Icons.calendar_month))
            ),
          ),
        )
      ],),
    )
    );
  }
}