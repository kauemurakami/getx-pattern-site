import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/getting_starter/binding.dart';
import 'package:getx_pattern_site/app/modules/getting_starter/page.dart';
import 'package:getx_pattern_site/app/modules/home/page.dart';
import 'package:getx_pattern_site/app/modules/introduction/page.dart';

class DashboardController extends GetxController {
  final pages = [HomePage(), IntroPage(), GetStartPage()];
  final index = 0.obs;

  changePage(i) {
    if (i != this.index.value) {
      this.index.value = i;
    }
  }
}
