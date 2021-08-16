import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';

class MenuWidget extends Container {
  final controller = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('intro'),
                onPressed: () => this.controller.changePage(1))
          ],
        ),
      ),
    );
  }
}
