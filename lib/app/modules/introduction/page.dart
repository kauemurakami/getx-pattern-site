import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/introduction/controller.dart';

class IntroPage extends GetView<IntroController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('IntroController')));
  }
}
