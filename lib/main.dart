import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_pattern_site/app/modules/dashboard/binding.dart';
import 'package:getx_pattern_site/app/modules/dashboard/page.dart';
import 'package:getx_pattern_site/routes/pages.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: DashboardBinding(),
    getPages: AppPages.pages,
    theme: ThemeData(
        fontFamily: 'RobotoMono',
        scaffoldBackgroundColor: ThemeData.dark().scaffoldBackgroundColor,
        textTheme: TextTheme(
          caption: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        )),
    initialRoute: Routes.DASHBOARD,
    home: DashboardPage(),
  ));
}
