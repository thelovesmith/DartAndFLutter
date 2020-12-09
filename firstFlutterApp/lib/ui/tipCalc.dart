import 'package:firstFlutterApp/utils/hexColors.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<TipCalculator> {
  int _tipPercentage = 0;
  double _billAmount = 0.0;
  int _personCounter = 1;
  Color _orange = HexColor("#f9cf90");
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Total Per Person"), Text("\$123")],
                ),
              ),
              decoration: BoxDecoration(
                  color: _orange, borderRadius: BorderRadius.circular(25.0)),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.all(12),
              width: 150,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: Colors.blueGrey.shade100,
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                        labelText: "Bill Amount",
                        prefixIcon: Icon(Icons.attach_money)),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(
                            value); //have to parse the string input into a double because the bill amount was instantiated as a double
                      } catch (exception) {
                        //in case aything happens the bill amount will show as 0.0
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Row(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
