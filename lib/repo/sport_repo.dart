import 'package:funny_app/model/sport.dart';

class SportRepo {
  static final Sport sp = new Sport(
      name: "Sports",
      logo: "images/logo.png",
      about: "Read sports news & Watch matches online & Watch reviews",
      backdropPhoto: "images/sport.png",
      sites: <Sites>[
        new Sites(
            title: "Filgoal",
            thumbnail: "images/filgoal.png",
            url: "https://www.filgoal.com/"),
        new Sites(
            title: "YallaKora",
            thumbnail: "images/yallakora.png",
            url: "https://www.yallakora.com/"),
        new Sites(
            title: "Kooora",
            thumbnail: "images/kooora-logo.png",
            url: "https://www.kooora.com/"),
        new Sites(
            title: "SuperKora",
            thumbnail: "images/superkora.png",
            url: "https://www.superkora.football/"),
        new Sites(
            title: "EuroSport",
            thumbnail: "images/logo-esp-og-new.png",
            url: "https://arabia.eurosport.com/"),
        new Sites(
            title: "Arabic.sport360",
            thumbnail: "images/sport360.png",
            url: "https://arabic.sport360.com/"),
      ],
      watch: <Watch>[
        new Watch(
            title: "Bein Match",
            thumbnail: "images/beinmatch.png",
            url: "http://beinmatch.tv/"),
        new Watch(
            title: "Yalla Shoot",
            thumbnail: "images/Yalla-Shoot-Today.png",
            url: "https://www.yalla-shoot.today/"),
        new Watch(
            title: "Yalla Shoot Plus",
            thumbnail: "images/yallashootplus.png",
            url: "https://www.yallashootplus.com/"),
        new Watch(
            title: "Koragoal",
            thumbnail: "images/kooragoal.png",
            url: "http://www.koooragoal.com/"),
        new Watch(
            title: "Yalla live",
            thumbnail: "images/yallalive.png",
            url: "https://www.yallalive.tv/"),
      ],
      review: <Review>[
        new Review(
            title: "Erza3",
            thumbnail: "images/erza3.png",
            url: "https://www.youtube.com/channel/UC0j1bJUOS_utB8q618YJ5Bw"),
        new Review(
            title: "Saba7o Korah",
            thumbnail: "images/saba7o.png",
            url: "https://www.youtube.com/user/egywithballs"),
        new Review(
            title: "EL madfa3",
            thumbnail: "images/madfa3.png",
            url: "https://www.youtube.com/channel/UC9c89meMU-ES5hb3CVAgIjQ"),
        new Review(
            title: "Ebn Othman",
            thumbnail: "images/joe.png",
            url: "https://www.youtube.com/channel/UChqMvzmKSHHyFZ9WFu0KeUg"),
        new Review(
            title: "Match Gamed",
            thumbnail: "images/matchgamed.png",
            url: "https://www.youtube.com/channel/UC1MZS_5--i4Z3IIGRiFYRgw"),
        new Review(
            title: "El kaweer",
            thumbnail: "images/elkaweer.png",
            url: "https://www.youtube.com/channel/UCvRbdoDaIeiY6umPJg1L0KA"),
        new Review(
            title: "Ahmed kisho",
            thumbnail: "images/ahmed.png",
            url: "https://www.youtube.com/channel/UCLdJB1eEb9vpmmkJC8TVvqg"),
      ]);
}
