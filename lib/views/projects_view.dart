import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  _ProjectsViewState createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.only(
            top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
        child: Text("Cyder",
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
        child: Text("TODO pull and render github README.md markdown files",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: offWhite,
              ),
            )),
      ),
    ]));
  }
}
