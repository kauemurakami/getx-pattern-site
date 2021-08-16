import 'package:get/get.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'dart:html' as html;

class HomeController extends GetxController {
  pubGetX() => html.window.location.href = urlGetPubDeb;
}
