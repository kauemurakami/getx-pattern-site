import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_pattern_site/app/modules/dashboard/binding.dart';
import 'package:getx_pattern_site/routes/pages.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(GetMaterialApp.router(
    debugShowCheckedModeBanner: false,
    initialBinding: DashboardBinding(),
    getPages: AppPages.pages,
    /*initialBinding: BindingsBuilder(
        () {
          Get.put(AuthService());
        },
      ),*/
    routeInformationParser: GetInformationParser(
      initialRoute: Routes.DASHBOARD,
    ),
    routerDelegate: GetDelegate(
      backButtonPopMode: PopMode.History,
      preventDuplicateHandlingMode: PreventDuplicateHandlingMode.ReorderRoutes,
    ),
  ));
}
