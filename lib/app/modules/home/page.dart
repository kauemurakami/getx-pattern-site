import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/controller.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class HomePage extends GetView {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Text(
          gp,
          style: title_text,
        ),
      ],
    )));
  }
}
