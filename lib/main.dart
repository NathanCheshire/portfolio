import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_strings.dart';
import 'package:portfolio/portfolio_page.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';
import 'package:portfolio/views/initial_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: webAppTitle,
        debugShowCheckedModeBanner: false,
        home: PortfolioPage(
          index: getCurrentIndex(),
          flexibleChildWidget: InitialPage(),
        ),
        theme: ThemeData(fontFamily: defaultFontFamily));
  }
}
