import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';
import 'package:getx_pattern_site/app/widgets/button.dart';
import 'package:getx_pattern_site/core/values/colors.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class MenuWidget extends Container {
  final controller = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: .3,
        child: Container(
          decoration: BoxDecoration(
            color: roxin,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 180.0,
                  width: 220.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/rocket.png',
                          ),
                          fit: BoxFit.contain))),
              Text(
                gp,
                style: title_text,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  slogan,
                  style: sub_title_menu_text,
                ),
              ),
              Divider(
                color: roxin,
              ),
              Obx(() => CustomButtonWidget(
                    text: home,
                    callback: () => this.controller.changePage(0),
                    seleceted: this.controller.index.value == 0 ? true : false,
                  )),
              Obx(() => CustomButtonWidget(
                    text: intro,
                    callback: () => this.controller.changePage(1),
                    seleceted: this.controller.index.value == 1 ? true : false,
                  )),
              Obx(() => CustomButtonWidget(
                    text: data_tutorial,
                    callback: () => this.controller.changePage(2),
                    seleceted: this.controller.index.value == 2 ? true : false,
                  )),
              Obx(() => CustomButtonWidget(
                    text: module_tutorial,
                    callback: () => this.controller.changePage(3),
                    seleceted: this.controller.index.value == 3 ? true : false,
                  )),
              Obx(() => CustomButtonWidget(
                    text: core_tutorial,
                    callback: () => this.controller.changePage(4),
                    seleceted: this.controller.index.value == 4 ? true : false,
                  )),
              Obx(() => CustomButtonWidget(
                    text: routes_tutorial,
                    callback: () => this.controller.changePage(5),
                    seleceted: this.controller.index.value == 5 ? true : false,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
