import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExternalLinkButton extends StatelessWidget {
  final String icon;
  final Color? color;
  final Color? backgroundColor;
  final Color? splashColor;

  const ExternalLinkButton({
    Key? key,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.splashColor,
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
        "assets" + "/" + icon,
        height: 45.0,
        width: 45.0,
        color: color,
        allowDrawingOutsideViewBox: true,
      ),
    );
  }
}