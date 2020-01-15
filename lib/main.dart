import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MY/anime_animation.dart';
import 'MY/movies_animation.dart';
import 'MY/news_animation.dart';
import 'MY/sport_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ASM'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future _gotoSport(BuildContext context) async {
    Map result = await Navigator.of(context)
        .push(new MaterialPageRoute<Map>(builder: (BuildContext context) {
      return new Sports();
    }));
  }

  Future _gotoMovies(BuildContext context) async {
    Map result = await Navigator.of(context)
        .push(new MaterialPageRoute<Map>(builder: (BuildContext context) {
      return new Movie();
    }));
  }

  Future _gotoAnime(BuildContext context) async {
    Map result = await Navigator.of(context)
        .push(new MaterialPageRoute<Map>(builder: (BuildContext context) {
      return new Animes();
    }));
  }

  Future _gotoNews(BuildContext context) async {
    Map result = await Navigator.of(context)
        .push(new MaterialPageRoute<Map>(builder: (BuildContext context) {
      return new News();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        new Container(
          alignment: Alignment.center,
          child: new Image.asset(
            "images/bac.png",
            width: 490.0,
            height: 1200,
            fit: BoxFit.fill,
          ),
        ),
        new Container(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 54.0),
            child: Text(
              "S&M&A",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        new Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
//               alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlatButton(
                        onPressed: () {
                          _gotoSport(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Sport",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlatButton(
                        onPressed: () {
                          _gotoMovies(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Movies",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            new Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlatButton(
                        onPressed: () {
                          _gotoAnime(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Anime",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlatButton(
                        onPressed: () {
                          _gotoNews(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "News",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        )),
      ],
    ));
  }
}

class Sports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sport',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SportAnimation(),
    );
  }
}

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movies",
      home: new MoviesAnimation(),
    );
  }
}

class Animes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Anime",
      home: new AnimeAnimation(),
    );
  }
}

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News",
      home: new NewsAnimation(),
    );
  }
}
