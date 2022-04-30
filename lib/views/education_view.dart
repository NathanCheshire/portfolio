import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class EducationView extends StatefulWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  _EducationViewState createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
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
