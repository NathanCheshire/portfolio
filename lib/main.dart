import 'package:flutter/material.dart';
import 'package:portfolio/portfolio_page.dart';
import 'package:portfolio/portfolio_numbers.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nathan Cheshire',
      debugShowCheckedModeBanner: false,
      home: PortfolioPage(index: getCurrentIndex()),
    );
  }
}
