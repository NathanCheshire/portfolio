import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';
import 'package:portfolio/constants/portfolio_strings.dart';

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

    double allocatedHeight =
        size.height - topBarHeight - bottomBarHeight - navigationBarHeight;

    double? degreeUseHeight;
    double? degreeUseWidth;

    double horizontalPadding = 10.0;

    if (widthDominantDimension) {
      degreeUseHeight = allocatedHeight / 1.5;
      degreeUseWidth = degreeUseHeight * degreeWidth / degreeHeight;
    } else {
      degreeUseWidth = size.width;
      degreeUseHeight = degreeUseWidth * degreeHeight / degreeWidth;
      degreeUseWidth -= horizontalPadding * 2;
    }

    return SingleChildScrollView(
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
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 30.0),
          child: Text("Status: completed fall, 2021",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: offWhite,
                ),
              )),
        ),
        DegreeWidget(
            degreeUseWidth: degreeUseWidth, degreeUseHeight: degreeUseHeight),
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
          child: Text("Status: credit hours remaining: 26",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: offWhite,
                ),
              )),
        ),
        DegreeWidget(
            degreeUseWidth: degreeUseWidth, degreeUseHeight: degreeUseHeight),
      ],
    ));
  }
}

class DegreeWidget extends StatelessWidget {
  const DegreeWidget({
    Key? key,
    required this.degreeUseWidth,
    required this.degreeUseHeight,
  }) : super(key: key);

  final double? degreeUseWidth;
  final double? degreeUseHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: degreeUseWidth,
              height: degreeUseHeight,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 45, 45),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Text("Loading...",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: offWhite,
                  ),
                )),
            Container(
                width: degreeUseWidth,
                height: degreeUseHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(degreeLink),
                  ),
                )),
          ],
        ));
  }
}
