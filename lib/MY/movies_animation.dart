import 'package:flutter/cupertino.dart';
import 'package:funny_app/repo/movies_repo.dart';

import 'movies_page.dart';

class MoviesAnimation extends StatefulWidget {
  @override
  _MoviesAnimationState createState() => _MoviesAnimationState();
}

class _MoviesAnimationState extends State<MoviesAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        duration: Duration(milliseconds: 1800), vsync: this);
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
    return MoviesPage(movies: MoviesRepo.mo, controller: _controller);
  }
}
