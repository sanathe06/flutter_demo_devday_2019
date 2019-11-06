import 'package:dev_day_demo_1/details_screen.dart';
import 'package:dev_day_demo_1/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevDay 2019',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/details": (context) => DetailsScreen(),
      },
    );
  }
}
