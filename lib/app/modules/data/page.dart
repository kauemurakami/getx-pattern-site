import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/data/controller.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class DataPage extends GetView {
  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        height: Get.height,
        width: Get.width,
        margin: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data_tutorial,
              style: title_text,
            ),
            MouseRegion(
              child: InkWell(
                  onTap: () => this.controller.pubGetX(),
                  child: Text(
                    'Entendendo o diretório $data_tutorial.',
                    style: white_text,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: Get.width,
                  child: InteractiveViewer(
                      panEnabled: true, // Set it to false
                      boundaryMargin: EdgeInsets.all(100),
                      minScale: 0.5,
                      maxScale: 2.2,
                      child: Image.asset(
                        data_estructure_img,
                        fit: BoxFit.contain,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(data_describe),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
