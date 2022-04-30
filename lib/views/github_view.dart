import 'package:flutter/material.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class GithubView extends StatefulWidget {
  const GithubView({Key? key}) : super(key: key);

  @override
  _GithubViewState createState() => _GithubViewState();
}

class _GithubViewState extends State<GithubView> {
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
