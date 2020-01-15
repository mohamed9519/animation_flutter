import 'package:funny_app/model/Anime.dart';

class AnimeRepo {
  static final Anime an = new Anime(
      name: "Animes",
      logo: "images/Alogo.png",
      about: "Watch Animes Online",
      backdropPhoto: "images/back.png",
      watch: <Watch>[
        new Watch(
            title: "Kiraanime",
            thumbnail: "images/sites.png",
            url: "https://kiranime.net/"),
        new Watch(
            title: "Animekom",
            thumbnail: "images/sites.png",
            url: "https://animekom.com/"),
        new Watch(
            title: "Shahid Anime",
            thumbnail: "images/sites.png",
            url: "https://shahiid-anime.net/"),
        new Watch(
            title: "Sky Anime",
            thumbnail: "images/sites.png",
            url: "https://skyanimetv.com/"),
        new Watch(
            title: "Anime2",
            thumbnail: "images/sites.png",
            url: "https://www.animem2o.com/"),
      ]);
}
