import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_strings.dart';
import 'package:portfolio/utils.dart';

import 'constants/portfolio_numbers.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: bottomBarHeight,
        color: primaryBackground,
        child: Expanded(
          child: Stack(children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/Github.svg",
                        height: 45,
                        width: 45,
                        color: Colors.white,
                        allowDrawingOutsideViewBox: true,
                      ),
                      onPressed: () {
                        openUrl(webAppSourceLink);
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      tooltip: "Website Source",
                    ))),
            Positioned(
              left: 50,
              top: 5,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/Gmail.svg",
                        height: 45,
                        width: 45,
                        allowDrawingOutsideViewBox: true,
                      ),
                      onPressed: () {
                        openUrl(personalEmailLink);
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      tooltip: "My personal email",
                    )),
              ),
            ),
            Positioned(
              left: 100,
              top: 5,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/Discord.svg",
                        height: 45,
                        width: 45,
                        color: Colors.white,
                        allowDrawingOutsideViewBox: true,
                      ),
                      onPressed: () {
                        openUrl(discordLink);
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      tooltip: "My Discord",
                    )),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text("Nate@NathanCheshire.com",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.teko(
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: primaryThemeColor,
                          ),
                        )),
                  ),
                )),
          ]),
        ));
  }
}
