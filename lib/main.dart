import 'package:flutter/material.dart';
import 'package:learnings/pages/quotes_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home:
      QuotesApp(title: "Quotes",),
    );
  }
}
