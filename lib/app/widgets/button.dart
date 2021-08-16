import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/core/values/colors.dart';

class CustomButtonWidget extends Container {
  final text, callback;
  CustomButtonWidget({this.callback, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 30.0,
      child: MaterialButton(
          hoverColor: roxin,
          child: Text(this.text),
          onPressed: () => this.callback()),
    );
  }
}
