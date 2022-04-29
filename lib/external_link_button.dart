import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';

class ExternalLinkButton extends StatelessWidget {
  final String icon;
  final Color? color;
  final Color? backgroundColor;
  final Color? splashColor;
  final String? tooltip;

  const ExternalLinkButton({
    Key? key,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.splashColor,
    this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      splashColor: splashColor,
      focusColor: backgroundColor,
      backgroundColor: backgroundColor,
      onPressed: () => {},
      child: SvgPicture.asset(
        "assets/" + icon,
        height: floatingButtonSize,
        width: floatingButtonSize,
        color: color,
        allowDrawingOutsideViewBox: true,
      ),
      tooltip: tooltip,
    );
  }
}
