import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funny_app/model/movies.dart';

import 'package:url_launcher/url_launcher.dart';

class MReviewCard extends StatelessWidget {
  MReviewCard(this.reviews);

  final Review reviews;

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(color: Colors.red, spreadRadius: 2.0, blurRadius: 10.0)
        ]);
  }

  Widget _thunimbal() {
    return new ClipRRect(
      borderRadius: new BorderRadius.circular(3.0),
      child: Stack(
        children: <Widget>[
          Image.asset(reviews.thumbnail),
          new Positioned(bottom: 6.0, left: 6.0, child: _bottuonLink())
        ],
      ),
    );
  }

  Widget _bottuonLink() {
    return new Material(
      color: Colors.redAccent,
      type: MaterialType.circle,
      child: IconButton(
        icon: Icon(Icons.link),
        onPressed: () async {
          if (await canLaunch(reviews.url)) {
            await launch(reviews.url);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 7.0),
      decoration: _boxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 3, child: _thunimbal()),
          Flexible(
            flex: 2,
            child: _createCourseInfo(),
          )
        ],
      ),
    );
  }

  Widget _createCourseInfo() {
    return new Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
        child: Text(
          reviews.title,
          style: TextStyle(color: Colors.black.withOpacity(0.85)),
        ));
  }
}
