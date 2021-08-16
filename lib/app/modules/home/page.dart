import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/controller.dart';
import 'package:getx_pattern_site/core/values/colors.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class HomePage extends GetView {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        height: Get.height,
        margin: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              gp,
              style: title_text,
            ),
            MouseRegion(
              child: InkWell(
                  onTap: () => this.controller.pubGetX(),
                  child: Text(
                    propose,
                    style: white_text,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                      'O objetivo principal, é tornar sua programação com Flutter e GetX, muito mais agradável e intuitiva \ndo que já é!'),
                ),
                Text(
                    'Pra isso devemos pensar de forma organizada e harmônica, e mais do que tudo, que realmente faça \nsentido para todos.'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    objective,
                    style: title_text,
                  ),
                  Text(but_why),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (_, __) => __ <= 4
                        ? Container(
                            margin: EdgeInsets.only(
                              top: 8.0,
                            ),
                            child: Text('$__ - ${whys[__]}'),
                          )
                        : Container(
                            margin: EdgeInsets.only(top: 16.0),
                            padding: EdgeInsets.only(bottom: 16.0),
                            color: roxin.withOpacity(.1),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 16.0, bottom: 16.0),
                                          height: 80.0,
                                          width: 80.0,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      url_getx_snippets_img))),
                                        )),
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                          width: Get.width,
                                          child: Text(
                                            getxsnippetsoffert,
                                            maxLines: 4,
                                          )),
                                    ),
                                  ],
                                ),
                                Text(start_aprend)
                              ],
                            ),
                          ))),
          ],
        ),
      ),
    )));
  }
}
