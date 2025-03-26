import 'package:flutter/material.dart';
import 'package:learnings/pages/calculator_basics.dart';
import 'package:learnings/pages/date_day.dart';
import 'package:learnings/pages/grid.dart';
import 'package:learnings/pages/location_geolocator.dart';
import 'package:learnings/pages/multiple_widgets.dart';
import 'package:learnings/pages/quotes_app.dart';
import 'package:learnings/pages/shared_preferences.dart';
import 'package:learnings/pages/stateful.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        CalculatorPage(),
      // SharedPreferencesPage(),
      // StatefulPage(),
      // GridPage(title: "Grid Page"),
      // DateDayPage(title: "Date-Day"),
      // MultipleWidgets(),
      // LocationPage(),
      // QuotesApp(title: "Quotes",),
    );
  }
}
