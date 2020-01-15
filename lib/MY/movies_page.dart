import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:funny_app/MY/sport_intro_animation.dart';

import 'package:funny_app/model/movies.dart';

import 'dart:ui' as ui;

import 'mreview_card.dart';
import 'msite_card.dart';
import 'mwatch_card.dart';

class MoviesPage extends StatelessWidget {
  MoviesPage({@required this.movies, @required AnimationController controller})
      : animation = SportIntroAnimation(controller);

  final Movies movies;
  final SportIntroAnimation animation;

  Widget _createAnimation(BuildContext context, Widget child) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Opacity(
          opacity: animation.bgOpacity.value,
          child: new Image.asset(
            movies.backdropPhoto,
            fit: BoxFit.cover,
          ),
        ),
        new BackdropFilter(
          filter: new ui.ImageFilter.blur(
              sigmaX: animation.bgBluar.value, sigmaY: animation.bgBluar.value),
          child: new Container(
            color: Colors.green.withOpacity(0.3),
            child: _createContent(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new AnimatedBuilder(
          animation: animation.controller, builder: _createAnimation),
    );
  }

  Widget _createContent() {
    return new SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createlogo(),
          _aboutMovies(),
          _ScrollWatch(),
          _ScrollReview(),
          _MScroll()
        ],
      ),
    );
  }

  Widget _createlogo() {
    return new Transform(
      transform: new Matrix4.diagonal3Values(
          animation.avatarsize.value, animation.avatarsize.value, 1.0),
      alignment: Alignment.center,
      child: new Container(
        width: double.infinity,
        height: 110.0,

//        decoration: new BoxDecoration(
//            shape: BoxShape.circle,
//            border: new Border.all(color: Colors.white24)),
        margin: const EdgeInsets.only(top: 32.0, left: 19.0),
        padding: const EdgeInsets.all(3.0),

        child: Row(
          children: <Widget>[
            new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Image.asset(
                movies.logo,
                width: 90.0,
                height: 90.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movies.name,
                style: new TextStyle(
                    fontSize: 19 * animation.avatarsize.value + 2.0,
                    color: Colors.white70),
              ),
            )
          ],
        ),
//        child: new ClipOval(
//           child: new Image.asset(company.logo),
//        ),
      ),
    );
  }

  Widget _aboutMovies() {
    return new Padding(
      padding: const EdgeInsets.only(top: 14.0, left: 14.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            movies.about,
            style: TextStyle(
                color: Colors.red.withOpacity(animation.nameOpacity.value),
                fontSize: 22 * animation.avatarsize.value,
                fontWeight: FontWeight.bold),
          ),

          Container(
            color: Colors.white.withOpacity(0.7),
            margin: EdgeInsets.symmetric(
              vertical: 14.0,
            ),
            width: animation.divider.value,
            height: 1.0,
          ),
//          Text(sport.about,
//            style:TextStyle(color: Colors.white.withOpacity(animation.bioOpacity.value),
//                fontSize: 22* animation.bioOpacity.value,
//                fontWeight: FontWeight.bold
//            ) ,
//          ),
        ],
      ),
    );
  }

  Widget _ScrollWatch() {
    return new Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: new Transform(
            transform: new Matrix4.translationValues(
                animation.ScrollTranslation.value, 0.0, 0.0),
            child: new Opacity(
                opacity: animation.ScrollOpacity.value,
                child: new SizedBox.fromSize(
                  size: new Size.fromHeight(250.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      itemCount: movies.watch.length,
                      itemBuilder: (BuildContext context, int index) {
                        var watches = movies.watch[index];
                        return new MWatchCard(watches);
                      }),
                ))));
  }

  Widget _ScrollReview() {
    return new Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: new Transform(
        transform: new Matrix4.translationValues(
            animation.ScrollTranslation.value, 0.0, 0.0),
        child: new Opacity(
          opacity: animation.ScrollOpacity.value,
          child: new SizedBox.fromSize(
            size: new Size.fromHeight(250.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                itemCount: movies.review.length,
                itemBuilder: (BuildContext context, int index) {
                  var reviews = movies.review[index];
                  return new MReviewCard(reviews);
                }),
          ),
        ),
      ),
    );
  }

  Widget _MScroll() {
    return new Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: new Transform(
        transform: new Matrix4.translationValues(
            animation.ScrollTranslation.value, 0.0, 0.0),
        child: new Opacity(
          opacity: animation.ScrollOpacity.value,
          child: new SizedBox.fromSize(
            size: new Size.fromHeight(250.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                itemCount: movies.site.length,
                itemBuilder: (BuildContext context, int index) {
                  var sites = movies.site[index];
                  return new MSiteCard(sites);
                }),
          ),
        ),
      ),
    );
  }
}
