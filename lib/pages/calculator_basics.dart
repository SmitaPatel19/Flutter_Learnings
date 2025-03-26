import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CalculatorPageState();
  }
}

class _CalculatorPageState extends State<CalculatorPage>{

  var no1= TextEditingController();
  var no2=TextEditingController();
  var res="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text("Calculator")),

      ),
      body: Container(

        color: Colors.purple.shade200,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller: no1,
              decoration: InputDecoration(
                hintText: "Enter number 1",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.purple,
                      width: 2,
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 2,
                    )
                ),
              ),

            ),

            TextField(
              keyboardType: TextInputType.number,
              controller: no2,
              decoration: InputDecoration(
                hintText: "Enter number 2",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 2,
                    )
                ),

              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(onPressed: (){
                  var a = int.parse(no1.text.toString());
                  var b = int.parse(no2.text.toString());

                  var sum= a+b;
                  res= "$sum";
                  setState(() {});

                }, child: Text("Add",style: TextStyle(
                    fontSize: 12
                ),)),

                ElevatedButton(
                    onPressed: (){

                      var a = int.parse(no1.text.toString());
                      var b = int.parse(no2.text.toString());

                      var diff= a-b;
                      res= "$diff";
                      setState(() {});

                    }, child: Text("Subtract",style: TextStyle(
                    fontSize: 12
                ),)),

                ElevatedButton(onPressed: (){

                  var a = int.parse(no1.text.toString());
                  var b = int.parse(no2.text.toString());

                  var multi= a*b;
                  res= multi.toStringAsFixed(2);
                  setState(() {});

                }, child: Text("Multiply",style: TextStyle(
                    fontSize: 12
                ),)
                ),

                ElevatedButton(onPressed: (){

                  var a = int.parse(no1.text.toString());
                  var b = int.parse(no2.text.toString());

                  var div= a/b;
                  res= div.toStringAsFixed(2);
                  setState(() {});

                }, child: Text("Divide",style: TextStyle(
                    fontSize: 12
                ),)),
              ],
            ),

            Text("Result : $res",style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.purple.shade800,
            ),),
          ],
        ),
      ),

    );
  }

}
