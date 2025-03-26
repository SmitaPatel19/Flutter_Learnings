import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<StatefulPage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StateFull Widget")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count : $count ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
              onPressed: () {
                //count++;

                setState(() {
                  count++;
                });
              },
              child: Text("Count", style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
