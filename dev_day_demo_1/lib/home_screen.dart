import 'package:flutter/material.dart';

import 'common.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter;
  List<DateTime> time;
  @override
  void initState() {
    counter = 0;
    time = List();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("DevDay 2019"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(
                context,
                "/details",
                arguments: Details(
                  time,
                  counter,
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Welcome to DevDay 2019 attendence counter",
                  textAlign: TextAlign.center,
                ),
                Hero(
                  tag: "counter",
                  child: Center(
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        "$counter",
                        style: TextStyle(fontSize: 100),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  height: 60,
                  child: FlatButton(
                    child: Text("Count One"),
                    onPressed: () {
                      setState(
                        () {
                          counter++;
                          time.add(DateTime.now());
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
