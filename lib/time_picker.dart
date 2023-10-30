import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay SelectTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker Reference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  _SelectedTime(context);
                },
                child: Text("Choose Time"),
    ),
            Padding(
                padding: const EdgeInsets.all(50.0),
              child: Text(
                  "${SelectTime.format(context)}",
                style: TextStyle(fontSize: 30),
              ),
    ),
          ],
        ),
      ),
    );
  }

  void _SelectedTime(BuildContext context) async{
    final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: SelectTime,
    initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay!=null && timeOfDay!= SelectTime){
      setState(() {
        SelectTime = timeOfDay;
      });
    }
  }
  
}
