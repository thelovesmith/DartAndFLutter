import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<TipCalculator> {
  int _tipPercentage = 0;
  double _billAmount = 0.0;
  int _personCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: [
            Container(
              width: 150,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Total Per Person"), Text("\$123")],
              ),
              decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(25.0)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(25.0)),
            ),
          ],
        ),
      ),
    );
  }
}
