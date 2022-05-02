import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Date());

class Date extends StatelessWidget {
  const Date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '날짜설정',
      debugShowCheckedModeBanner: false,
      home: DatePage(),
    );
  }
}

class DatePage extends StatefulWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {

  @override

  var space = SizedBox(height: 30);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('날짜설정'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text('Date Picker'),
                onPressed: () {
                  Future<DateTime?> selected = showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2012),
                      lastDate: DateTime(2032),
                    builder: (BuildContext context, child) {
                        return Theme(
                            data: ThemeData.light(),
                            child: child!
                        );
                    }
                  );
                  selected.then((dateTime) {
                    setState(() {
                    });
                  });
                }),
            space,
            ElevatedButton(
              child: Text('Time Picker'),
              onPressed: () {
                Future<TimeOfDay?> selectedTime = showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                );
                selectedTime.then((timeOfDay) {
                });
              })
          ],
        ),
      )
    );
  }
}

