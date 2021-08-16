import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/core/values/colors.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class CustomButtonWidget extends Container {
  final text, callback, seleceted;
  CustomButtonWidget({this.callback, this.text, this.seleceted});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      width: Get.width,
      height: 30.0,
      child: MaterialButton(
          hoverColor: Theme.of(context).scaffoldBackgroundColor,
          color: this.seleceted
              ? Theme.of(context).scaffoldBackgroundColor
              : roxin,
          child: Text(
            this.text,
            style: button_text,
          ),
          onPressed: () => this.callback()),
    );
  }
}
