import 'package:flutter/material.dart';

import 'common.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Details details = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.blue,
            child: Hero(
              tag: "counter",
              child: Center(
                child: Material(
                  type: MaterialType.transparency,
                  child: Text(
                    "${details.count}",
                    style: TextStyle(fontSize: 100),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: details.time.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.timer),
                  title: Text("${Common.formatDate(details.time[index])}"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
