import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({super.key});

  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  var nameController = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "No Value saved";

  @override
  void initState() {
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Shared Preferences'),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("Name"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: Colors.purple, width: 2),
                    ),
                  ),
                ),

                SizedBox(height: 11),

                ElevatedButton(
                  onPressed: () async {
                    var name = nameController.text.toString();
                    if(name.isNotEmpty){
                      var prefs = await SharedPreferences.getInstance();
                      prefs.setString(KEYNAME, name);
                      setState(() {
                        nameValue = name;
                      });
                    }
                  },
                  child: Text("Save"),
                ),

                SizedBox(height: 12),

                Text(nameValue),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getvalue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    nameValue = getName ?? "No Value Saved";

    setState(() {});
  }
}
