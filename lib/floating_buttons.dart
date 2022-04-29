import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/portfolio_colors.dart';

import 'external_link_button.dart';
import 'portfolio_numbers.dart';

class FloatingButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setFloatingButtonSize(MediaQuery.of(context).size.width / 20);

    return Stack(
        children: <Widget>[
          Positioned(
            right: floatingButtonSize * 2 + 20 * 3.5,
            bottom: 0,
            child: ExternalLinkButton(
              icon: "Gmail.svg",
              backgroundColor: secondaryBackground,
              splashColor: primaryThemeColor,
              tooltip: "My Email",
            ),
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: ExternalLinkButton(
              icon: "Discord.svg",
              backgroundColor: secondaryBackground,
              color: Colors.white,
              splashColor: primaryThemeColor,
              tooltip: "My Discord",
            ),
          ),
          Positioned(
            right: floatingButtonSize + 20 * 2,
            bottom: 0,
            child: ExternalLinkButton(
              icon: "GitHub.svg",
              color: Colors.white,
              backgroundColor: secondaryBackground,
              splashColor: primaryThemeColor,
              tooltip: "My GitHub",
            ),
          ),
        ],
      );
  }
}