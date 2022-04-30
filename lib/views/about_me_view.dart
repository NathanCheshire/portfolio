import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/objects/about_me.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  _AboutMeViewState createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  Future<String> getAboutMes() {
    return rootBundle.loadString("json/about_me.json");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: FutureBuilder(
            future: getAboutMes(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                List<AboutMe> aboutMes = (json
                    .decode(snapshot.data)
                    .map((i) => AboutMe.fromJson(i))
                    .toList());

                print(aboutMes.length);

                List<Widget> widgetStack = [];

                for (int i = 0; i < aboutMes.length; i++) {
                  widgetStack.add(Text(aboutMes[i].title,
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
                  widgetStack.add(Text(aboutMes[i].description,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.prompt(
                        textStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w800,
                          color: offWhite,
                        ),
                      )));
                  widgetStack.add(SizedBox(
                    height: 20,
                  ));
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: widgetStack,
                );
              } else {
                return Container(
                  width: 500,
                  height: 500,
                  color: primaryThemeColor,
                );
              }
            },
          )),
    );
  }
}
