import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/controller.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';
import 'dart:html' as html;

class HomePage extends GetView {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            gp,
            style: title_text,
          ),
          InkWell(
            mouseCursor: MouseCursor.defer,
            onTap: () => html.window.location.href = urlGetPubDeb,
            child: RichText(
                text: TextSpan(text: propose, children: [
              TextSpan(
                text: getx,
              )
            ])),
          ),
        ],
      ),
    )));
  }
}
