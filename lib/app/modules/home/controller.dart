import 'package:get/get.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  pubGetX() async {
    const url = urlGetPubDeb;
    if (await canLaunch(url))
      await launch(url);
    else
      // can't launch url, there is some error
      throw "Could not launch $url";
  }

  getGetxSnippets() async {
    const url = url_getx_pattern_snippets;
    if (await canLaunch(url))
      await launch(url);
    else
      // can't launch url, there is some error
      throw "Could not launch $url";
  }
}
