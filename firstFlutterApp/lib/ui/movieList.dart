import 'package:firstFlutterApp/model/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieListView extends StatelessWidget {
  final List<Movie> movieList = Movie.getMovies();
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
    "Soul",
    "Benjamin Button",
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
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(0)),
                      child: Text("H")),
                ),
                trailing: Text(movieList[index].imdbRating),
                title: Text(movieList[index].title),
                subtitle: Text(movieList[index].rated),
                // onTap: () =>
                //     debugPrint("Movie name: ${movies.elementAt(index)}"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieListViewDetails(
                                movieName: movieList.elementAt(index).title,
                              )));
                },
              ),
              elevation: 6.0,
            ),
          );
        },
      ),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  final String movieName;

  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);
// curly braces around this.movie name and key makes them optional when instanciating the statelesswidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.movieName}'),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(
                  context); // sends you back to the previous route using the already sent context
            },
            child: Text("GO Back"),
          ),
        ),
      ),
    );
  }
}
