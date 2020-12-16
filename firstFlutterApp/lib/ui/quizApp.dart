import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Row(), Row()],
        ),
      ),
    );
  }
}
