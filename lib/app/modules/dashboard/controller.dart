import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/core/page.dart';
import 'package:getx_pattern_site/app/modules/data/page.dart';
import 'package:getx_pattern_site/app/modules/home/page.dart';
import 'package:getx_pattern_site/app/modules/introduction/page.dart';
import 'package:getx_pattern_site/app/modules/module/page.dart';
import 'package:getx_pattern_site/app/modules/routes/page.dart';

class DashboardController extends GetxController {
  final pages = [
    HomePage(),
    IntroPage(),
    DataPage(),
    ModulePage(),
    CorePage(),
    RoutesPage()
  ];
  final index = 0.obs;

  changePage(i) {
    if (i != this.index.value) {
      this.index.value = i;
    }
  }
}
