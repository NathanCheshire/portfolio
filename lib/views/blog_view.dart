import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class BlogView extends StatefulWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  _BlogViewState createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Coming soon",
          textAlign: TextAlign.center,
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w800,
              color: offWhite,
            ),
          )),
    );
  }
}
