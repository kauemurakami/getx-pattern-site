import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_pattern_site/app/modules/dashboard/binding.dart';
import 'package:getx_pattern_site/app/modules/dashboard/page.dart';
import 'package:getx_pattern_site/pages/pages.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    getPages: AppPages.pages,
    home: DashboardPage(),
    initialBinding: DashboardBinding(),
    initialRoute: Routes.DASHBOARD,
    debugShowCheckedModeBanner: false,
  ));
}
