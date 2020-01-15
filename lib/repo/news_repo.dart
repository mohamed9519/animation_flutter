import 'package:funny_app/model/news.dart';

class NewsRepo {
  static final New nw = new New(
      name: "News",
      logo: "images/newslogo.png",
      about: "Read news & Read weather news",
      backdropPhoto: "images/news.png",
      review: <Review>[
        new Review(
            title: "Weather",
            thumbnail: "images/weather.png",
            url: "http://ema.gov.eg/"),
      ],
      site: <Site>[
        new Site(
            title: "Youm7",
            thumbnail: "images/youm7.png",
            url: "https://www.youm7.com/"),
        new Site(
            title: "Elwatan",
            thumbnail: "images/elwatan.png",
            url: "https://www.elwatannews.com/"),
        new Site(
            title: "ELMasry ElYoum",
            thumbnail: "images/masrey.png",
            url: "https://www.almasryalyoum.com/"),
        new Site(
            title: "Masrawy",
            thumbnail: "images/maxresdefault.png",
            url: "https://www.masrawy.com/"),
        new Site(
            title: "ElShrouk",
            thumbnail: "images/shorouklogo.png",
            url: "https://www.shorouknews.com/"),
      ]);
}
