import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';
import 'package:portfolio/views/about_me_view.dart';
import 'package:portfolio/views/blog_view.dart';
import 'package:portfolio/views/education_view.dart';
import 'package:portfolio/views/experience_view.dart';
import 'package:portfolio/views/github_view.dart';
import 'package:portfolio/views/home_view.dart';
import 'package:portfolio/views/projects_view.dart';

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

class _PortfolioBaseViewState extends State<PortfolioBaseView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: secondaryBackground,
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: topBarHeight,
            color: primaryBackground,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Center(
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: navigationBarHeight,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                          flexibleChildWidget: ProjectsView()),
                      NavigationButton(
                          text: "GitHub",
                          index: 3,
                          flexibleChildWidget: GithubView()),
                      NavigationButton(
                          text: "Experience",
                          index: 4,
                          flexibleChildWidget: ExperienceView()),
                      NavigationButton(
                          text: "Education",
                          index: 5,
                          flexibleChildWidget: EducationView()),
                      NavigationButton(
                          text: "Blog",
                          index: 6,
                          flexibleChildWidget: BlogView()),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Flexible(child: widget.flexibleChildWidget)),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
