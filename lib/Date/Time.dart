import 'package:flutter/material.dart';
void main(){
  runApp(aaaa());
}
class aaaa extends StatelessWidget {
  const aaaa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SelectTime()
    );
  }
}

class SelectTime extends StatefulWidget {
  const SelectTime({super.key});

  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  TimeOfDay selectedTime=TimeOfDay.now();

  Future<void>selectTime(BuildContext context)async{
    final TimeOfDay? picked=await showTimePicker(context: context,
      initialTime: selectedTime,
    );
    if(picked != null && picked != selectedTime){
      setState(() {
        selectedTime=picked;
      });
    }
  }
  String _formatTime(TimeOfDay timeOfDay){
    final hour=timeOfDay.hourOfPeriod;
    final minute=timeOfDay.minute.toString().padLeft(2, '0');
    final period=timeOfDay.period==DayPeriod.am? 'AM' : 'PM';
    return "$hour:$minute $period";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TIME PICKER"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: TextEditingController(
                  text: _formatTime(selectedTime)
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "SELECT TIME",
                  suffixIcon:IconButton(onPressed: () => selectTime(context),

                      icon: Icon(Icons.access_time_filled))
              ),),
          )
        ],
      ),

      );
  }
}