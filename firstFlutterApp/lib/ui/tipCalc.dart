import 'package:firstFlutterApp/utils/hexColors.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<TipCalculator> {
  //values with underscores in front of them are private to this stateful widget
  int _tipPercentage = 0;
  double _billAmount = 0.0;
  int _personCounter = 1;
  Color _orange = HexColor("#f9CF90");
  Color _purple = HexColor("#6908D6");
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Total Per Person",
                          style: TextStyle(
                              color: _purple,
                              fontWeight: FontWeight.normal,
                              fontSize: 15)),
                    ),
                    Text(
                        "\$ ${calculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}",
                        style: TextStyle(
                            color: _purple,
                            fontSize: 33,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: _purple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25.0)),
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
                      color: _purple,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        labelText: "Bill Amount",
                        labelStyle: TextStyle(
                          color: _purple,
                        ),
                        prefixIcon: Icon(
                          Icons.attach_money,
                          color: _purple,
                        )),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Split",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_personCounter > 1) {
                                  _personCounter--;
                                } else {
                                  //do nothing
                                }
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: _purple.withOpacity(0.1)),
                              child: Center(
                                  child: Text(
                                "-",
                                style: TextStyle(
                                    color: _purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )),
                            ),
                          ),
                          Text(
                            "$_personCounter",
                            style: TextStyle(
                                color: _purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _personCounter++;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: _purple.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(7.0)),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: _purple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  //Tip Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tip Amount",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "\$ ${(calculateTotalTip(_billAmount, _tipPercentage, _personCounter)).toStringAsFixed(2)}",
                          style: TextStyle(
                              color: _purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  //! SLider
                  Column(children: [
                    Text(
                      "$_tipPercentage\%",
                      style: TextStyle(
                          color: _purple,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        min: 0,
                        max: 100,
                        divisions: 10,
                        activeColor: _purple,
                        inactiveColor: Colors.grey,
                        label: "Tip Percentage",
                        value: _tipPercentage.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            _tipPercentage = value.round();
                          });
                        })
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(double billAmount, int splitBy, int tipPercentage) {
    var totalPerPerson =
        (calculateTotalTip(billAmount, tipPercentage, splitBy) + billAmount) /
            splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount, int tipPercentage, int splitBy) {
    double totalTip = 0.0;

    if (billAmount == 0 ||
        billAmount.toString().isEmpty ||
        billAmount == null) {
      //todo
    } else {
      totalTip = (billAmount * tipPercentage) / 100;
    }
    return totalTip;
  }
}
