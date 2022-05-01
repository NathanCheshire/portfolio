import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';

class GithubView extends StatefulWidget {
  const GithubView({Key? key}) : super(key: key);

  @override
  _GithubViewState createState() => _GithubViewState();
}

class _GithubViewState extends State<GithubView> {
  @override
  Widget build(BuildContext context) {
    Color cardColor = Color.fromARGB(255, 65, 75, 87);
    Color cardTextColor = Color.fromARGB(255, 228, 230, 244);
    double cardWidth = 400;
    double cardHeight = 280;

    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Text(
              "GitHub repositories, green ones are those which I suggest you checkout",
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w800,
                  color: offWhite,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: cardWidth,
            height: cardHeight,
            decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Cyder",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.prompt(
                              textStyle: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: cardTextColor,
                              ),
                            )),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Nathan",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: cardTextColor,
                                  ),
                                )),
                          ),
                        )),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
                          child: Text("Language: Java",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.prompt(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: cardTextColor,
                                ),
                              )),
                        ),
                      ]),
                )),
          ),
        ),
      ],
    ));
  }
}
