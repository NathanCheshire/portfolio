import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  _ExperienceViewState createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: primaryThemeColor,
      ),
    );
  }
}
