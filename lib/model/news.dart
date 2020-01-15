import 'package:flutter/material.dart';

class New {
  New(
      {@required this.name,
      @required this.logo,
//    @required this.location,
      @required this.about,
      @required this.backdropPhoto,
//    @required this.watch,
      @required this.review,
      @required this.site});

  final String name;
  final String logo;

//  final String location;
  final String backdropPhoto;
  final String about;

//  final List<Watch> watch;
  final List<Review> review;
  final List<Site> site;
}

class Site {
  Site({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}

class Review {
  Review({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}
