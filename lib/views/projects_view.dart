import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  _ProjectsViewState createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
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
