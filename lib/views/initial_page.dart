import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_strings.dart';

import '../constants/portfolio_numbers.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage>
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
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: (ABOUT_ME_CIRCLE_RADIUS * 2 + _borderLen),
            height: (ABOUT_ME_CIRCLE_RADIUS * 2 + _borderLen),
            decoration: BoxDecoration(
              color: primaryThemeColor,
                border: Border.all(
                  color: primaryThemeColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(ABOUT_ME_CIRCLE_RADIUS))),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'assets/Face.jpg',
            ),
            radius: ABOUT_ME_CIRCLE_RADIUS - _borderLen * 4,
          ),
          RotationTransition(
              turns: turnsTween.animate(_controller),
              child: ArcText(
                  radius: ABOUT_ME_CIRCLE_RADIUS + _borderLen * 2,
                  text: circleTextDescription,
                  textStyle: TextStyle(
                      fontSize: 16,
                      color: offWhite,
                      fontFamily: "Prompt",
                      fontWeight: FontWeight.bold),
                  startAngleAlignment: StartAngleAlignment.start,
                  placement: Placement.outside,
                  direction: Direction.clockwise)),
        ],
      ),
    );
  }
}
