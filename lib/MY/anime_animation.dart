import 'package:flutter/cupertino.dart';

import 'package:funny_app/repo/anime_repo.dart';

import 'anime_page.dart';

class AnimeAnimation extends StatefulWidget {
  @override
  _AnimeAnimationState createState() => _AnimeAnimationState();
}

class _AnimeAnimationState extends State<AnimeAnimation>
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
    return AnimePage(
      anime: AnimeRepo.an,
      controller: _controller,
    );
  }
}
