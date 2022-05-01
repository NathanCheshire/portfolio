import 'dart:convert';

import 'package:dio/dio.dart';
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

Future<List<Repo>> getRepos() async {
  var response = await Dio().get('http://www.example.com');

  if (response.statusCode == 200) {
    List<Repo> repos;
    repos = (json.decode(response.data) as List)
        .map((i) => Repo.fromJson(i))
        .toList();

    print(repos.length);
    return repos;
  } else {
    return [];
  }
}
