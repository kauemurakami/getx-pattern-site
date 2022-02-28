import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class ProviderPage extends GetView {
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
              'Data',
              style: title_text,
            ),
            MouseRegion(
              child: InkWell(
                  onTap: () => this.controller.pubGetX(),
                  child: Text(
                    'Entendendo o diretório data.',
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
                        'assets/images/data_estructure.jpg',
                        fit: BoxFit.contain,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                      'Aqui não teremos muitos o que discutir, é apenas um repositório onde você irá abstrair/empacotar TUDO relacionado aos seus dados, seus modelos, provedores de dados, enums, apis e inclusive seus Services, que irão dispor dados por toda sua aplicação. Deixando seus dados disponivéis para todos os seus módulos, consequentemente só o que é vital para seu módulo ficará contido nele!!\nIsso foi pensado para que você possa manter sua estrutura de diretórios o menor possível ao trabalhar com flutter, e ao mesmo tempo, ser algo intuitivo e didático para acelerar sua curva de aprendizado.'),
                ),
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
