import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:portfolio/portfolio_colors.dart';
import 'package:portfolio/portfolio_strings.dart';

import '../portfolio_numbers.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 15),
    vsync: this,
  )..repeat();

  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 0,
  );

  int _borderLen = 5;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: (ABOUT_ME_CIRCLE_RADIUS + _borderLen) * 2,
          height: (ABOUT_ME_CIRCLE_RADIUS + _borderLen) * 2,
          margin: EdgeInsets.all(100.0),
          decoration:
              BoxDecoration(color: primaryThemeColor, shape: BoxShape.circle),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            'assets/Face.jpg',
          ),
          radius: ABOUT_ME_CIRCLE_RADIUS,
        ),
        RotationTransition(
            turns: turnsTween.animate(_controller),
            child: ArcText(
                radius: 190,
                text: circleTextDescription,
                textStyle: TextStyle(
                    fontSize: 18,
                    color: offWhite,
                    fontFamily: "Prompt",
                    fontWeight: FontWeight.bold),
                startAngleAlignment: StartAngleAlignment.start,
                placement: Placement.outside,
                direction: Direction.clockwise)),
      ],
    );
  }
}
