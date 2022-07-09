import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/bottom_bar.dart';
import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';
import 'package:portfolio/constants/portfolio_strings.dart';
import 'package:portfolio/portfolio_base_view.dart';
import 'package:portfolio/views/about_me_view.dart';
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
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                  toolbarHeight: topBarHeight,
                  backgroundColor: secondaryBackground,
                  foregroundColor: offBlack,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Center(
                          child: Text("Nate Cheshire",
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
                  bottom: TabBar(indicatorColor: primaryThemeColor, tabs: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Myself",
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.passionOne(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: offWhite,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Myself",
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.passionOne(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: offWhite,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Myself",
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.passionOne(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: offWhite,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Myself",
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.passionOne(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: offWhite,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Myself",
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.passionOne(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: offWhite,
                          ),
                        ),
                      ),
                    ),
                  ])),
              body: TabBarView(children: [
                HomeView(),
                HomeView(),
                HomeView(),
                HomeView(),
                HomeView(),
              ]),
            )),
        theme: ThemeData(
            fontFamily: defaultFontFamily,
            scrollbarTheme: ScrollbarThemeData().copyWith(
              thumbColor: MaterialStateProperty.all(scrollbarColor),
            )));
  }
}
