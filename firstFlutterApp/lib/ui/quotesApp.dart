import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//! Stateful widget
class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

//! State object
class _WisdomState extends State<Wisdom> {
  List quotes = [
    'We are what we repeatedly do. Excellence, therefore, is not an act but a habit.',
    "The best way out is always through.",
    "Do not wait to strike till the iron is hot; but make it hot by striking.",
    "Great spirits have always encountered violent opposition from mediocre minds.",
    "Whether you think you can or think you can’t, you’re right.I know for sure that what we dwell on is who we become.",
    " I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times, I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.",
    "You must be the change you want to see in the world.",
    "What you get by achieving your goals is not as important as what you become by achieving your goals.",
  ];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Quotes App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontFamily: 'Avenir Next'),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 10, 5, 0),
                child: Center(
                    child: Text(
                  quotes[_index % quotes.length],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                )),
              ),
            ),
            Divider(
              thickness: 3.0,
              color: Colors.deepPurpleAccent,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: FlatButton.icon(
                color: Colors.deepPurpleAccent,
                onPressed: _showQuote,
                icon: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                ),
                label: Text(
                  "Inspire Me",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Avenir Next',
                      fontSize: 16),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
