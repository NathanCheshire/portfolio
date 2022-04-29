import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/floating_buttons.dart';
import 'package:portfolio/portfolio_colors.dart';
import 'package:portfolio/portfolio_numbers.dart';
import 'package:portfolio/portfolio_page_route.dart';

import 'bottom_bar.dart';

class PortfolioPage extends StatefulWidget {
  final int index;

  const PortfolioPage({Key? key, required this.index}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: MediaQuery.of(context).size);

    late final AnimationController _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();

    final Tween<double> turnsTween = Tween<double>(
      begin: 1,
      end: 0,
    );

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
                            fontSize: 40.sp,
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
          ),
          Expanded(
              child: Flexible(
                  child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 145 * 2,
                height: 145 * 2,
                margin: EdgeInsets.all(100.0),
                decoration: BoxDecoration(
                    color: primaryThemeColor, shape: BoxShape.circle),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'assets/Face.jpg',
                ),
                radius: 140,
              ),
              RotationTransition(
                  turns: turnsTween.animate(_controller),
                  child: ArcText(
                      radius: 170,
                      text:
                          'Nathan Cheshire, advanced Java developer, Flutter developer, passionate about oerating systems, UI/UX, and visualizations.',
                      textStyle: TextStyle(
                          fontSize: 18, color: offWhite, fontFamily: "Lato"),
                      startAngleAlignment: StartAngleAlignment.start,
                      placement: Placement.outside,
                      direction: Direction.clockwise)),
            ],
          )))
        ],
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingButtons(),
    );
  }
}

// todo use this style for the ring font

// GoogleFonts.prompt(
//       textStyle: TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: offWhite,
//       ),
//     )

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
          Navigator.push(context,
              PortfoliPageRoute(widget: PortfolioPage(index: this.index)));
        });
  }
}
