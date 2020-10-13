import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      backgroundColor: Colors.amber.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              focusColor: Colors.purpleAccent,
              highlightColor: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.amberAccent.shade200,
                      offset: new Offset(5.0, 5.0),
                      blurRadius: 5.5,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("TAP ME!",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
                ),
              ),
              onTap: () => debugPrint("Ink Well Tapped"),
            )
          ],
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
