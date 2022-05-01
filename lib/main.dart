import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_strings.dart';
import 'package:portfolio/portfolio_base_view.dart';
import 'package:portfolio/views/home_view.dart';
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
        home: PortfolioBaseView(
          index: 0,
          flexibleChildWidget: HomeView(),
        ),
        theme: ThemeData(fontFamily: defaultFontFamily));
  }
}
