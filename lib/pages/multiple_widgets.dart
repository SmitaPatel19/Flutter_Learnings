import 'package:flutter/material.dart';

class MultipleWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Multiple Widgets"),
      ),
      body: Container(child: Column(children: [Story(), Contacts(), Menu()])),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.black,
        child: ListView.builder(
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 60,
                  child: CircleAvatar(backgroundColor: Colors.white30),
                ),
              ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: Container(
        color: Colors.white10,
        child: ListView.builder(
          itemBuilder:
              (context, index) => Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(backgroundColor: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 100),
                    child: Column(
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Contact number", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("Pressed");
                    },
                    icon: Icon(Icons.add_call, size: 27, color: Colors.black),
                  ),
                ],
              ),
          itemCount: 10,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.black,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {
                  print("Pressed");
                },
                icon: Icon(Icons.add_call, size: 30, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: IconButton(
                onPressed: () {
                  print("Pressed");
                },
                icon: Icon(Icons.keyboard_alt, size: 30, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: IconButton(
                onPressed: () {
                  print("Pressed");
                },
                icon: Icon(
                  Icons.recent_actors_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  print("Pressed");
                },
                icon: Icon(
                  Icons.perm_contact_calendar_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
