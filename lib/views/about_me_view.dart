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

  Future<void> initAboutMes() async {
    String file = "assets/txt/about_me.txt";
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

    widgetStack.add(SizedBox(
      height: 60,
    ));

    widgetStack.add(Text("In my free time I enjoy:",
        textAlign: TextAlign.center,
        style: GoogleFonts.prompt(
          textStyle: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: offWhite,
          ),
        )));

    widgetStack.add(SizedBox(
      height: 5,
    ));

    widgetStack.add(FreeTimePoint(freeTimeAction: "Practicing guitar"));
    widgetStack.add(FreeTimePoint(freeTimeAction: "Learning German"));
    widgetStack.add(FreeTimePoint(freeTimeAction: "Body Building"));
    widgetStack.add(FreeTimePoint(freeTimeAction: "Developing Cyder"));
    widgetStack
        .add(FreeTimePoint(freeTimeAction: "Flutter projects (like this one)"));

    widgetStack.add(SizedBox(
      height: 55,
    ));

    widgetStack.add(Text("Recently Played Spotify Tracks",
        textAlign: TextAlign.center,
        style: GoogleFonts.prompt(
          textStyle: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: offWhite,
          ),
        )));

    widgetStack.add(SizedBox(
      height: 20,
    ));

    widgetStack.add(Wrap(
      alignment: WrapAlignment.center,
      spacing: 25,
      runSpacing: 25,
      direction: Axis.horizontal,
      children: [
        SpotifySong(
          width: 100,
          height: 100,
          imagePath: "assets/jpg/music_placeholder.jpg",
          title: "Be Kind (with Halsey)",
        ),
        SpotifySong(
          width: 100,
          height: 100,
          imagePath: "assets/jpg/music_placeholder.jpg",
          title: "Be Kind (with Halsey)",
        ),
        SpotifySong(
          width: 100,
          height: 100,
          imagePath: "assets/jpg/music_placeholder.jpg",
          title: "Be Kind (with Halsey)",
        ),
        SpotifySong(
          width: 100,
          height: 100,
          imagePath: "assets/jpg/music_placeholder.jpg",
          title: "Be Kind (with Halsey)",
        ),
        SpotifySong(
          width: 100,
          height: 100,
          imagePath: "assets/jpg/music_placeholder.jpg",
          title: "Be Kind (with Halsey)",
        ),
      ],
    ));

    setState(() {
      aboutMeWidgets = widgetStack;
    });
  }

  @override
  Widget build(BuildContext context) {
    initAboutMes();

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
    ));
  }
}

class SpotifySong extends StatelessWidget {
  const SpotifySong({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  final double width;
  final double height;
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imagePath),
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
            child: Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.prompt(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: offWhite,
                  ),
                )),
          )
        ],
      )),
    );
  }
}

class FreeTimePoint extends StatelessWidget {
  const FreeTimePoint({Key? key, required this.freeTimeAction});

  final String freeTimeAction;

  final String bulletPoint = '•';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(bulletPoint + " " + freeTimeAction,
          textAlign: TextAlign.center,
          style: GoogleFonts.prompt(
            textStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: offWhite,
            ),
          )),
    );
  }
}
