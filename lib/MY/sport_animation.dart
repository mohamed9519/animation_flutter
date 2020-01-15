import 'package:flutter/material.dart';
import 'package:funny_app/MY/sport_page.dart';
import 'package:funny_app/repo/sport_repo.dart';
class SportAnimation extends StatefulWidget {
  @override
  _SportAnimationState createState() => _SportAnimationState();
}

class _SportAnimationState extends State<SportAnimation> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 1800)
    ,vsync: this);
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new SportPage(sport: SportRepo.sp, controller: _controller);
  }
}
