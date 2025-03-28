import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key, required this.title});

  final String title;

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    var arr = [Colors.purple, Colors.black, Colors.yellow, Colors.pink];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          Container(color: arr[0]),
          Container(color: arr[1]),
          Container(color: arr[2]),
          Container(color: arr[3]),

          //Container(color: arr[4],),
          //Container(color: arr[5],),
        ],
      ),
    );
  }
}
