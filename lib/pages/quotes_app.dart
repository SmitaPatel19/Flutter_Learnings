import 'package:flutter/material.dart';

class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key, required this.title});

  final String title;

  @override
  State<QuotesApp> createState() => _QuizApp();
}

class _QuizApp extends State<QuotesApp> {

  var Quotes = [
    'Popularity is a bubble. It’s a mountain: you can go up really hard but walk down really fast.',
    'Living without passion is like being dead.',
    'Don’t be trapped in someone else’s dream.',
    'Life is tough, and things don’t always work out well, but we should be brave and go on with our lives.',
    'Find your name, find your voice by speaking yourself.',
    'Team work makes the dream work',
    'Never give up on a dream that you’ve been chasing almost your whole life.',
    'Life isn’t about being perfect; it’s about accomplishing your dreams.',
    'Have confidence in your face from the moment you wake up',
    'You’re too young to let the world break you.'
  ];

  var idx = 0;

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.purple.shade50,
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Quotes'),
        ),
        body:
        Container(
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Card(

                  child: Padding(

                    padding: const EdgeInsets.only(left: 60, right:60 , top: 15,bottom: 15),

                    child: Text(Quotes[idx],textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,

                    ),),
                  ),
                ),

                SizedBox(
                  height: 12,
                ),

                ElevatedButton(onPressed: onClick, child: Text("Next",style: TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.purple,

                ),)),

              ],
            ),
          ),
        )

    );
  }

  void onClick() {

    setState(() {

      if(idx >= Quotes.length-1){
        idx = 0;
      }
      else{
        idx++;
      }

    });
  }
}
