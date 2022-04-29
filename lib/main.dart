import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/floating_buttons.dart';
import 'package:portfolio/portfolio_numbers.dart';

import 'bottom_bar.dart';
import 'external_link_button.dart';
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
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackground,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: bottomBarHeight,
            color: primaryBackground,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Center(
                    // todo would be cool if this would ripple 3 letters to white and move along and wrap
                    child: Text("Nathan Cheshire",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.bangers(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: primaryThemeColor,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                NavigationButton(text: "About me", index: 0),
                NavigationButton(text: "Projects", index: 1),
                NavigationButton(text: "GitHub", index: 2),
                NavigationButton(text: "Experience", index: 3),
                NavigationButton(text: "Blog", index: 4),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingButtons(),
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
          Navigator.push(context, PortfoliPageRoute(widget: SecondPage()));
        });
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.black,
    );
  }
}
