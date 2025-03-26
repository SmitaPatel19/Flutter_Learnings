import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateDayPage extends StatefulWidget {
  const DateDayPage({super.key, required this.title});

  final String title;

  @override
  State<DateDayPage> createState() => _DateDayPageState();
}

class _DateDayPageState extends State<DateDayPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Date'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Text(
                'Current Time : ${DateFormat('jms').format(time)}',
                style: TextStyle(color: Colors.purple, fontSize: 25),
              ),

              Text(
                'Current Date : ${DateFormat('yMMMMd').format(time)}',
                style: TextStyle(color: Colors.purple, fontSize: 25),
              ),

              Text(
                'Current Day : ${DateFormat('EEEE').format(time)}',
                style: TextStyle(color: Colors.purple, fontSize: 25),
              ),

              ElevatedButton(
                onPressed: () {
                  print('Date');
                },
                child: Text(
                  'Current Time',
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
