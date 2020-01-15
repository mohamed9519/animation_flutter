import 'package:flutter/material.dart';

class Anime {
  Anime({
    @required this.name,
    @required this.logo,
//    @required this.location,
    @required this.about,
    @required this.backdropPhoto,
    @required this.watch,
//    @required this.review,
//    @required this.site
  });

  final String name;
  final String logo;

//  final String location;
  final String backdropPhoto;
  final String about;
  final List<Watch> watch;
//  final List<Review> review;
//  final List<Site> site;
}

class Watch {
  Watch({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}
