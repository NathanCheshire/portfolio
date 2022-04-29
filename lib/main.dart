import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'PortfoliPageRoute.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nathan Cheshire',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  double floatingButtonSize = 40.0;
  double bottomBarHeight = 60.0;

  Color primaryBackground = Color.fromARGB(255, 18, 20, 24);
  Color secondaryBackground = Color.fromARGB(255, 27, 31, 36);

  Color primaryThemeColor = Color.fromARGB(255, 0, 195, 154);

  Color offWhite = Color.fromARGB(255, 245, 245, 245);
  Color offBlack = Color.fromARGB(255, 15, 15, 15);

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
                Center(
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
              ],
            ),
          ),
          CupertinoButton(
              child: Text("About me",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.passionOne(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: offWhite,
                        ),
                      )),
              onPressed: () {
                Navigator.push(
                    context,
                    PortfoliPageRoute(widget: SecondPage()));
              })
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: bottomBarHeight,
        color: primaryBackground,
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            right: floatingButtonSize * 2 + 20 * 3.5,
            bottom: 0,
            child: FloatingButton(
              icon: "Gmail.svg",
              backgroundColor: secondaryBackground,
              splashColor: primaryThemeColor,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: FloatingButton(
              icon: "Discord.svg",
              backgroundColor: secondaryBackground,
              color: Colors.white,
              splashColor: primaryThemeColor,
            ),
          ),
          Positioned(
            right: floatingButtonSize + 20 * 2,
            bottom: 0,
            child: FloatingButton(
              icon: "GitHub.svg",
              color: Colors.white,
              backgroundColor: secondaryBackground,
              splashColor: primaryThemeColor,
            ),
          ),
        ],
      ),
    );
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

class FloatingButton extends StatelessWidget {
  final String icon;
  final Color? color;
  final Color? backgroundColor;
  final Color? splashColor;

  const FloatingButton({
    Key? key,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.splashColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      splashColor: splashColor,
      backgroundColor: backgroundColor,
      onPressed: () => {},
      child: SvgPicture.asset(
        "assets" + "/" + icon,
        height: 45.0,
        width: 45.0,
        color: color,
        allowDrawingOutsideViewBox: true,
      ),
    );
  }
}
