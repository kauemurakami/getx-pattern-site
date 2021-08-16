import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';
import 'package:getx_pattern_site/app/modules/dashboard/widgets/menu.dart';
import 'package:getx_pattern_site/app/modules/dashboard/widgets/spa.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Row(
          children: [MenuWidget(), SPAWidget()],
        ),
      ),
    );
  }
}
