import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

import 'external_link_button.dart';
import 'constants/portfolio_numbers.dart';

class FloatingButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double requestedSize = MediaQuery.of(context).size.width / 20;
    setFloatingButtonSize(requestedSize < MAX_FLOATING_BUTTON_SIZE
        ? requestedSize
        : MAX_FLOATING_BUTTON_SIZE);

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
