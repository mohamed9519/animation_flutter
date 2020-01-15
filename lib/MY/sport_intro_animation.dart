import 'package:flutter/animation.dart';

class SportIntroAnimation {
  SportIntroAnimation(this.controller)
      : bgOpacity = new Tween(begin: 0.5, end: 1.0).animate(new CurvedAnimation(
            parent: controller,
            curve: new Interval(0.000, 0.500, curve: Curves.ease))),
        bgBluar = new Tween(begin: 0.0, end: 5.0).animate(new CurvedAnimation(
            parent: controller,
            curve: new Interval(0.000, 0.800, curve: Curves.ease))),
        avatarsize = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.100, 0.400, curve: Curves.elasticInOut))),
        nameOpacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.350, 0.450, curve: Curves.easeIn))),
        locationOpacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.150, 0.250, curve: Curves.easeIn))),
        divider = new Tween(begin: 0.0, end: 225.0).animate(new CurvedAnimation(
            parent: controller,
            curve: new Interval(0.650, 0.750, curve: Curves.fastOutSlowIn))),
        bioOpacity = new Tween(begin: 0.0, end: 0.85).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.750, 0.950, curve: Curves.easeIn))),
        ScrollTranslation = new Tween(begin: 60.0, end: 0.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.830, 1.000, curve: Curves.ease))),
        ScrollOpacity = new Tween(begin: 0.0, end: 1.0).animate(
            new CurvedAnimation(
                parent: controller,
                curve: new Interval(0.830, 1.0, curve: Curves.fastOutSlowIn)));

  final AnimationController controller;
  final Animation<double> bgOpacity;
  final Animation<double> bgBluar;
  final Animation<double> avatarsize;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> divider;
  final Animation<double> bioOpacity;
  final Animation<double> ScrollTranslation;
  final Animation<double> ScrollOpacity;
}
