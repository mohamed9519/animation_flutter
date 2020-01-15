import 'package:flutter/cupertino.dart';
import 'package:funny_app/MY/news_page.dart';
import 'package:funny_app/repo/news_repo.dart';

class NewsAnimation extends StatefulWidget {
  @override
  _NewsAnimationState createState() => _NewsAnimationState();
}

class _NewsAnimationState extends State<NewsAnimation>
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
    return NewsPage(news: NewsRepo.nw, controller: _controller);
  }
}
