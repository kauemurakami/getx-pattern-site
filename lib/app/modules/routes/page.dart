import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/routes/controller.dart';

class RoutesPage extends GetView {
  final controller = Get.put(RoutesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RoutesPage')),
        body: SafeArea(child: Text('RoutesController')));
  }
}
