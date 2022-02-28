import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';

class SPAWidget extends Container {
  final controller = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Obx(() => this.controller.pages[this.controller.index.value]),
      ),
    );
  }
}
