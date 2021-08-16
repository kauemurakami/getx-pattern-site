import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';
import 'package:getx_pattern_site/app/modules/dashboard/widgets/menu.dart';
import 'package:getx_pattern_site/routes/pages.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Row(
          children: [
            MenuWidget(),
            Expanded(
                flex: 7,
                child: Obx(() => Container(
                    child:
                        this.controller.pages[this.controller.index.value]))),
          ],
        ),
      ),
    );
  }
}
