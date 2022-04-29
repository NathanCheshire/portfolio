import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  _AboutMeViewState createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: Column(
        children: [
          Text("I'm flattered you want to know more about me :)",
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w800,
                  color: offWhite,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
              "I attended Mississippi State Unviersity for seven semesters, majoring in software engineering and mathematics. I finished my SE degree and began working in industry for Camgian. I have plans to return to school in the future to finish my mathematics major and possible pursue a masters or Ph.D. in Computer Science.",
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: offWhite,
                ),
              )),
        ],
      ),
    );
  }
}
