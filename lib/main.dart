import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/portfolio_page.dart';
import 'package:portfolio/portfolio_numbers.dart';
import 'portfolio_colors.dart';
import 'portfolio_page_route.dart';

void main() {
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

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key? key,
    required this.index,
    required this.text,
  }) : super(key: key);

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Text(text,
            textAlign: TextAlign.center,
            style: GoogleFonts.passionOne(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: this.index == getCurrentIndex()
                    ? primaryThemeColor
                    : offWhite,
              ),
            )),
        onPressed: () {
          if (getCurrentIndex() == this.index) {
            return;
          }

          setCurrentIndex(this.index);
          Navigator.push(context, PortfoliPageRoute(widget: PortfolioPage(index: this.index)));
        });
  }
}
