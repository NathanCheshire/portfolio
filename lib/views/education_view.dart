import 'package:flutter/material.dart';

class EducationView extends StatefulWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  _EducationViewState createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  double degreeWidth = 3500;
  double degreeHeight = 2545;

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
          image: AssetImage("assets/jpg/se_diploma.jpg"),
          fit: widthDominantDimension ? BoxFit.fitHeight : BoxFit.fitWidth,
        ),
        shape: BoxShape.rectangle,
      ),
    ));
  }
}
