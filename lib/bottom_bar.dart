import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/portfolio_colors.dart';

import 'portfolio_numbers.dart';

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
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/GitHub.svg",
                  height: floatingButtonSize,
                  width: floatingButtonSize,
                  color: Colors.white,
                  allowDrawingOutsideViewBox: true,
                ),
                onPressed: () {},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                tooltip: "Website Source",
              )),
        ],
      ),
    );
  }
}
