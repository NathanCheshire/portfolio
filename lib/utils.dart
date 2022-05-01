import 'package:dio/dio.dart';
import 'package:portfolio/constants/portfolio_strings.dart';
import 'package:url_launcher/url_launcher.dart';

import 'entities/repo.dart';

openUrl(url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

githubTimeToPrettyTime(String githubTime) {
  if (githubTime.length < 10) {
    return;
  } else {
    String year = githubTime.substring(0, 4);
    String month = githubTime.substring(5, 7);
    String day = githubTime.substring(8, 10);

    return year + "/" + month + "/" + day;
  }
}

final client = Dio();

Future<List<Repo>> getRepos() async {
  var response = await client.get(githubReposLink);

  if (response.statusCode == 200) {
    print('success');
    print(response.statusMessage);
    print(response.data);

    List<Repo> repos;
    repos = (response.data as List).map((nate) => Repo.fromJson(nate)).toList();
    return repos;
  } else {
    return []; // todo check for no objects in ret and show error widget
  }
}
