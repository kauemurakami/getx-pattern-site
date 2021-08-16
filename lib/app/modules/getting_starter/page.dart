import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/getting_starter/controller.dart';

class GetStartPage extends GetView {
  final controller = Get.put(GetStartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GetStartPage')),
        body: SafeArea(child: Text('GetStartController')));
  }
}
