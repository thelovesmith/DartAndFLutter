import 'package:firstFlutterApp/model/questions.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionCounter = 0;
  List questionBank = [
    Question.name(
        "The Battle of the Bulge occurred during the First World War?", false),
    Question.name(
        "One of the ancient wonders of the world was once located at the Port of Alexandria?",
        true),
    Question.name("King Henry VIII was 55 years old when he died?", true),
    Question.name("The Korean War began in 1940?", false),
    Question.name(
        "The Greek God 'Zeus' was given the Roman name 'Jupiter'?", true)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey.shade300,
      // we use Builder here to access the context which is a descendant of Builder
      // else Scaffold.of will return null
      body: Builder(
        builder: (BuildContext context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "images/flag.png",
                  height: 200,
                  width: 350,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.grey.shade400,
                            style: BorderStyle.solid)),
                    height: 120.0,
                    child: Center(
                        child: Text(
                      questionBank.elementAt(_questionCounter).questionText,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () => _checkAnswer(true, context),
                    color: Colors.blueGrey,
                    child: Text(
                      "TRUE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () => _checkAnswer(false, context),
                    color: Colors.blueGrey,
                    child: Text(
                      "FALSE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () => _nextQuestion(),
                    color: Colors.blueGrey,
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              Row()
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(bool userChoice, BuildContext context) {
    if (userChoice == questionBank[_questionCounter].isCorrect) {
      debugPrint("IS correct");
      Scaffold.of(context).showSnackBar(snackbarCorrect);
    } else {
      Scaffold.of(context).showSnackBar(snackbarIncorrect);
    }
  }

  _nextQuestion() {
    setState(() {
      _questionCounter = (_questionCounter + 1) % questionBank.length;
    });
    // print(_questionCounter);
    // print(questionBank.length);
    // print(2 % 5);
  }

  final snackbarCorrect = SnackBar(
    content: Text('Correct'),
  );

  final snackbarIncorrect = SnackBar(
    content: Text('Incorrect'),
  );
}
