import 'package:flutter/material.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/Github.svg",
                  height: floatingButtonSize,
                  width: floatingButtonSize,
                  color: Colors.white,
                  allowDrawingOutsideViewBox: true,
                ),
                onPressed: () {openUrl(webAppSourceLink);},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                tooltip: "Website Source",
              )),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text("Nate@NathanCheshire.com",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.teko(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: primaryThemeColor,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
