import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/core/controller.dart';

class CorePage extends GetView {
  final controller = Get.put(CoreController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('CoreController')));
  }
}
