import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

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

    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
          child: Text("Bachelor of Science: Software Engineering",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: offWhite,
                ),
              )),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/jpg/se_diploma.jpg"),
                  fit: widthDominantDimension
                      ? BoxFit.fitHeight
                      : BoxFit.fitWidth),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
          child: Text("Bachelor of Science: Mathematics",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: offWhite,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 30.0),
          child: Text("Credit hours remaining: 26",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: offWhite,
                ),
              )),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/jpg/se_diploma.jpg"),
                  fit: widthDominantDimension
                      ? BoxFit.fitHeight
                      : BoxFit.fitWidth),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
      ],
    ));
  }
}
