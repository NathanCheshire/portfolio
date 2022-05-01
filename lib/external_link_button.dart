import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/utils.dart';

class ExternalLinkButton extends StatelessWidget {
  final String icon;
  final Color? color;
  final Color? backgroundColor;
  final Color? splashColor;
  final String? tooltip;
  final String link;
  final String hero;

  const ExternalLinkButton({
    Key? key,
    required this.icon,
    required this.link,
    this.color,
    this.backgroundColor,
    this.splashColor,
    this.tooltip,
    required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      splashColor: splashColor,
      heroTag: hero,
      focusColor: backgroundColor,
      backgroundColor: backgroundColor,
      onPressed: () => {openUrl(this.link)},
      child: SvgPicture.asset(
        "assets/" + icon,
        height: 45,
        width: 45,
        color: color,
        allowDrawingOutsideViewBox: true,
      ),
      tooltip: tooltip,
    );
  }
}
