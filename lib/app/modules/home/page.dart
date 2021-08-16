import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/controller.dart';

class HomePage extends GetView {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('home')));
  }
}
