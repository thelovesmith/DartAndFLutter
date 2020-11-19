import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Card"),
        backgroundColor: Colors.black,
        centerTitle: false,
      ),
      backgroundColor: Colors.amber,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvater()],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20, 0, 10),
            child: Text("Avery-Dante Hinds",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 10),
            child: Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text("myname@gmail.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  '@drkskndev',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _getAvater() {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.fromLTRB(0, 0, 300, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(width: 1.5, color: Colors.white),
          image: DecorationImage(
            image: NetworkImage("https://picsum.photos/300/300"),
            fit: BoxFit.cover,
          )),
    );
  }
}
