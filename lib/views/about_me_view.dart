import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  _AboutMeViewState createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  List<Widget> aboutMeWidgets = [];

  Future<void> readAboutMes() async {
    String file = "txt/about_me.txt";
    final String response = await rootBundle.loadString(file);

    List<String> parts = response.split("\n");

    List<Widget> widgetStack = [];

    if (parts.length % 2 != 0) {
      throw new Exception("Error parsing contents of $file");
    }

    for (int i = 0; i < parts.length / 2; i++) {
      widgetStack.add(Text(parts[2 * i],
          textAlign: TextAlign.center,
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w800,
              color: offWhite,
            ),
          )));
      widgetStack.add(SizedBox(
        height: 20,
      ));
      widgetStack.add(Text(parts[2 * i + 1],
          textAlign: TextAlign.center,
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: secondaryTextColor,
            ),
          )));
      widgetStack.add(SizedBox(
        height: 20,
      ));
    }

    setState(() {
      aboutMeWidgets = widgetStack;
    });
  }

  @override
  Widget build(BuildContext context) {
    readAboutMes();
    print("called read about mes");

    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: (aboutMeWidgets.length > 0
          ? (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: aboutMeWidgets,
            ))
          : Container()),

      // todo if latency is an issue when this uses Mongo,
      //make a shimmer loading effect like:
      //https://www.youtube.com/watch?v=-SpAkwgPIHU&ab_channel=TheFlutterWay
    ));
  }
}
