import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/introduction/controller.dart';

class IntroPage extends GetView {
  final controller = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(child: Text('IntroController')));
  }
}
