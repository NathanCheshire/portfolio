import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

openUrl(url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

late AssetImage _seDegreeImage;

setSeDegreeImage(seDegreeImage) {
  _seDegreeImage = seDegreeImage;
}

getSeDegreeImage() {
  return _seDegreeImage;
}
