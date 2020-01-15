import 'package:flutter/material.dart';

class Sport {
  Sport(
      {@required this.name,
      @required this.logo,
//    @required this.location,
      @required this.about,
      @required this.backdropPhoto,
      @required this.sites,
      @required this.watch,
      @required this.review});

  final String name;
  final String logo;

//  final String location;
  final String backdropPhoto;
  final String about;
  final List<Sites> sites;
  final List<Watch> watch;
  final List<Review> review;
}

class Review {
  Review({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}

class Watch {
  Watch({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}

class Sites {
  Sites({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}
