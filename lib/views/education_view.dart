import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

class EducationView extends StatefulWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  _EducationViewState createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  double degreeWidth = 7015;
  double degreeHeight = 5100;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool widthDominantDimension = size.width > size.height;

    return Center(
        child: Container(
      height: degreeWidth,
      width: degreeHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: getSeDegreeImage(),
          fit: widthDominantDimension ? BoxFit.fitHeight : BoxFit.fitWidth,
        ),
        shape: BoxShape.rectangle,
      ),
    ));
  }
}
