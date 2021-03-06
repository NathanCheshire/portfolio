import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';
import 'package:portfolio/widgets/github_card.dart';
import 'package:portfolio/widgets/holder_card.dart';

class GithubView extends StatefulWidget {
  const GithubView({Key? key}) : super(key: key);

  @override
  _GithubViewState createState() => _GithubViewState();
}

class _GithubViewState extends State<GithubView> {
  @override
  Widget build(BuildContext context) {
    Color cardColor = Color.fromARGB(255, 65, 75, 87);
    Color cardSubContainerColor = Color.fromARGB(255, 91, 104, 119);
    Color cardTextColor = Color.fromARGB(255, 228, 230, 244);
    double cardWidth = 400;
    double cardHeight = 280;

    // todo generate this on website start
    final int numHolderCards = 40;

    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: FutureBuilder(
                future: getRepos(),
                builder: (contexter, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    List<HolderCard> cards = [];

                    for (var i = 0; i < numHolderCards; i++) {
                      cards.add(new HolderCard(
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                          cardColor: cardColor,
                          cardSubContainerColor: cardSubContainerColor));
                    }
                    return Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 50,
                        runSpacing: 50.0,
                        direction: Axis.horizontal,
                        children: cards);
                  } else {
                    List<GithubCard> cards = [];

                    for (var i = 0; i < snapshot.data.length; i++) {
                      if (snapshot.data[i].name != null &&
                          snapshot.data[i].description != null &&
                          snapshot.data[i].language != null &&
                          snapshot.data[i].html_url != null &&
                          snapshot.data[i].updated_at != null) {
                        cards.add(new GithubCard(
                            cardWidth: cardWidth,
                            cardHeight: cardHeight,
                            cardTextColor: cardTextColor,
                            cardColor: cardColor,
                            repoName: snapshot.data[i].name,
                            repoDescription: snapshot.data[i].description,
                            repoLanguage: snapshot.data[i].language,
                            repoLink: snapshot.data[i].html_url,
                            repoUpdateTime: snapshot.data[i].updated_at));
                      }
                    }
                    return Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 50,
                        runSpacing: 50.0,
                        direction: Axis.horizontal,
                        children: cards);
                  }
                })));
  }
}
