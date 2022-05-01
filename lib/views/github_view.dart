import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

import '../widgets/github_card.dart';

class GithubView extends StatefulWidget {
  const GithubView({Key? key}) : super(key: key);

  @override
  _GithubViewState createState() => _GithubViewState();
}

class _GithubViewState extends State<GithubView> {
  @override
  Widget build(BuildContext context) {
    getRepos();

    Color cardColor = Color.fromARGB(255, 65, 75, 87);
    Color cardTextColor = Color.fromARGB(255, 228, 230, 244);
    double cardWidth = 400;
    double cardHeight = 280;

    return SingleChildScrollView(
        child: Column(
      children: [
        GithubCard(
          cardWidth: cardWidth,
          cardHeight: cardHeight,
          cardColor: cardColor,
          cardTextColor: cardTextColor,
          repoName: "Cyder",
          repoLanguage: "Java",
          repoDescription: "Nathan",
          repoUpdateTime: "2021-08-30",
        ),
      ],
    ));
  }
}

