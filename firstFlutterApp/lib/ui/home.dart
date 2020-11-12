import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'buttons.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint("button tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade700,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint("button pressed")),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: _tapButton,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("floating button pressed"),
        backgroundColor: Colors.green,
        child: Icon(Icons.call_missed),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "AC"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "Alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: "Next")
        ],
        onTap: (int index) => debugPrint("Tapped Item: $index"),
      ),
      backgroundColor: Colors.amber.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomButton(), CustomInKwell()],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
