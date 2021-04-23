import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieListView extends StatelessWidget {
  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I Am Legend",
    "300",
    "The Wolf On Wall Street",
    "Interstellar",
    "Game Of Thrones",
    "Vikings",
    "Soul"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Card(
              color: Colors.white,
              child: ListTile(
                title: Text(movies[index]),
              ),
              elevation: 3.0,
            ),
          );
        },
      ),
    );
  }
}
