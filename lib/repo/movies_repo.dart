import 'package:funny_app/model/movies.dart';

class MoviesRepo {
  static final Movies mo = new Movies(
      name: "Movies",
      logo: "images/Mlogo.png",
      about:
          "Watch online & Download movies & Watch reviews & Book your ticket",
      backdropPhoto: "images/movies.png",
      watch: <Watch>[
        new Watch(
            title: "Egy Best",
            thumbnail: "images/egy.png",
            url: "https://feta.egybest.pw/"),
        new Watch(
            title: "CimaClub",
            thumbnail: "images/cimaclub.png",
            url: "https://m.cimaclub.com/"),
        new Watch(
            title: "Cima4",
            thumbnail: "images/cima4.png",
            url: "http://w.cima4u.tv/"),
        new Watch(
            title: "Akoam",
            thumbnail: "images/akwam.png",
            url: "https://w5.akoam.net/"),
        new Watch(
            title: "TukTuk",
            thumbnail: "images/tuktuk.png",
            url: "https://tuktukcinema.com/"),
      ],
      review: <Review>[
        new Review(
            title: "Maher Moshly",
            thumbnail: "images/maher.png",
            url: "https://www.youtube.com/channel/UCTFudzu0dUatBTpkMtK_Z8w"),
        new Review(
            title: "Film Gamed",
            thumbnail: "images/filmgamed.png",
            url: "https://www.youtube.com/user/FilmGamedDotCom"),
        new Review(
            title: "Filmmer",
            thumbnail: "images/filmmer.png",
            url: "https://www.youtube.com/channel/UCMxUlhhZ8FbwwIoxAXa73ug"),

//        new Review(
//            title: "Imdb",
//            thumbnail: "images/IMDB_Logo_2016.png",
//            url: "https://www.imdb.com/"),
        new Review(
            title: "Rotten Tomatoes",
            thumbnail: "images/rotten.png",
            url: "https://www.rottentomatoes.com/"),
      ],
      site: <Site>[
        new Site(
            title: "Elcinema",
            thumbnail: "images/elcenima.png",
            url: "https://elcinema.com/"),
      ]);
}
