import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  _ExperienceViewState createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  List<Widget> widgets = [];

  Future<void> initExperience() async {
    String file = "assets/txt/experience.txt";
    final String response = await rootBundle.loadString(file);

    List<String> parts = response.split("\n");

    List<Widget> widgetStack = [];

    bool headerString = true;

    for (int i = 0; i < parts.length / 2; i += 2) {
      if (parts[i].trim().length == 0) {
        continue;
      }

      if (headerString) {
        widgetStack.add(Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
          child: Text(parts[2 * i],
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w800,
                  color: offWhite,
                ),
              )),
        ));

        headerString = !headerString;
      } else {
        widgetStack.add(Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
          child: Text(parts[2 * i + 1],
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: secondaryTextColor,
                ),
              )),
        ));

        headerString = !headerString;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    initExperience();

    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: (widgets.length > 0
          ? (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widgets,
            ))
          : Container()),
    ));
  }
}
