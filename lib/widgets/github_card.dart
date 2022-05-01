import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class GithubCard extends StatelessWidget {
  const GithubCard(
      {Key? key,
      required this.cardWidth,
      required this.cardHeight,
      required this.cardColor,
      required this.cardTextColor,
      required this.repoName,
      required this.repoDescription,
      required this.repoLanguage,
      required this.repoUpdateTime,
      required this.repoLink})
      : super(key: key);

  final double cardWidth;
  final double cardHeight;
  final Color cardColor;
  final Color cardTextColor;
  final String repoName;
  final String repoDescription;
  final String repoLanguage;
  final String repoUpdateTime;
  final String repoLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Text(repoName,
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
                        child: Text(repoDescription,
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
                        padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Language: " + repoLanguage,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: cardTextColor,
                                  ),
                                )),
                            Text(githubTimeToPrettyTime(repoUpdateTime),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.prompt(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: cardTextColor,
                                  ),
                                )),
                          ],
                        )),
                  ]),
            )),
      ),
    );
  }
}
