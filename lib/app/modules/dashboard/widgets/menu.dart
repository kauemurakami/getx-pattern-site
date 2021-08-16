import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';
import 'package:getx_pattern_site/app/widgets/button.dart';
import 'package:getx_pattern_site/core/values/colors.dart';
import 'package:getx_pattern_site/core/values/strings.dart';

class MenuWidget extends Container {
  final controller = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
            border: Border(right: BorderSide(width: 1.0, color: roxin))),
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
                          'assets/rocket.png',
                        ),
                        fit: BoxFit.contain))),
            Text(
              gp,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                slogan,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
              ),
            ),
            Divider(
              color: roxin,
            ),
            CustomButtonWidget(
              text: home,
              callback: () => this.controller.changePage(0),
            ),
            CustomButtonWidget(
              text: intro,
              callback: () => this.controller.changePage(1),
            ),
            CustomButtonWidget(
              text: starter,
              callback: () => this.controller.changePage(2),
            ),
          ],
        ),
      ),
    );
  }
}
