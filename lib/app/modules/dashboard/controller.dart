import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/binding.dart';
import 'package:getx_pattern_site/app/modules/home/page.dart';
import 'package:getx_pattern_site/pages/pages.dart';

class DashboardController extends GetxController {
  final pages = <String>[
    Routes.HOME,
  ];
  final index = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  changePage(index) {
    this.index.value = index;
    Get.offNamed(pages[index.value], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
          settings: settings, page: () => HomePage(), binding: HomeBinding());
    }

    return null;
  }
}
