import 'package:firstFlutterApp/ui/bizCard.dart';
import 'package:firstFlutterApp/ui/tipCalc.dart';
import 'package:flutter/material.dart';
import 'ui/quotesApp.dart';
import 'ui/home.dart';

// void main() => runApp(ScaffoldExamle());

void main() => runApp(new MaterialApp(
      home: TipCalculator(),
      debugShowCheckedModeBanner: true, //removes debug banner from UI
    ));

//Material Design emulates the emotion, motion, and shadows that mimic real life exeperience interacting with real onjects.
//It's a concetual piece of paper on which the UI appears
