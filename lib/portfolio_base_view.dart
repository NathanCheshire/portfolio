import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/floating_buttons.dart';

import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';
import 'package:portfolio/views/about_me_view.dart';
import 'package:portfolio/views/blog_view.dart';
import 'package:portfolio/views/home_view.dart';

import 'bottom_bar.dart';
import 'navigation_button.dart';

class PortfolioBaseView extends StatefulWidget {
  final int index;
  final Widget flexibleChildWidget;

  const PortfolioBaseView(
      {Key? key, required this.index, required this.flexibleChildWidget})
      : super(key: key);

  @override
  _PortfolioBaseViewState createState() => _PortfolioBaseViewState();
}

class _PortfolioBaseViewState extends State<PortfolioBaseView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: MediaQuery.of(context).size);

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
                NavigationButton(
                  text: "Home",
                  index: 0,
                  flexibleChildWidget: HomeView(),
                ),
                NavigationButton(
                  text: "About me",
                  index: 1,
                  flexibleChildWidget: AboutMeView(),
                ),
                NavigationButton(
                    text: "Projects",
                    index: 2,
                    flexibleChildWidget: Container()),
                NavigationButton(
                    text: "GitHub", index: 3, flexibleChildWidget: Container()),
                NavigationButton(
                    text: "Experience",
                    index: 4,
                    flexibleChildWidget: Container()),
                NavigationButton(
                    text: "Blog", index: 5, flexibleChildWidget: BlogView()),
              ],
            ),
          ),
          Expanded(child: Flexible(child: widget.flexibleChildWidget))
        ],
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: FloatingButtons(),
    );
  }
}
