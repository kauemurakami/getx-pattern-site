import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/introduction/controller.dart';
import 'package:getx_pattern_site/core/values/colors.dart';
import 'package:getx_pattern_site/core/values/strings.dart';
import 'package:getx_pattern_site/core/values/themes/text.dart';

class IntroPage extends GetView {
  final controller = Get.put(IntroController());

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
              'Estrutura',
              style: title_text,
            ),
            MouseRegion(
              child: InkWell(
                  onTap: () => this.controller.pubGetX(),
                  child: Text(
                    'Observando a estrutura.',
                    style: white_text,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '*Utilize os botões do mouse para dar zoom e arrastar a imagem.',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.redAccent, fontSize: 12.0),
                ),
                Container(
                  height: 300,
                  width: Get.width,
                  child: InteractiveViewer(
                      panEnabled: true, // Set it to false
                      boundaryMargin: EdgeInsets.all(100),
                      minScale: 0.5,
                      maxScale: 2.2,
                      child: Image.asset(
                        'assets/images/mindmap_estructure.jpg',
                        fit: BoxFit.contain,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                      'Agora que você conhece a proposta e deu uma boa analisada na apresentação da estrutura, vamos parar um pouco para falar rapidamente sobre ela, antes de introduzir você na seção do GetX, para que você possa seguir nossos exemplos sem dificuldade ou dúvidas sobre nossos padrões de nomenclatura ou fluxo.\nPois bem, vamos falar rapidamente de um por um agora, não se preocupe se você está se aventurando e não conhece alguns dos conceitos que serão abordados aqui, isso é apenas uma apresentação formal com a estrutura, iremos falar mais detalhadamente sobre cada uma delas, com exemplos, em suas respectivas seções.!'),
                ),
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
          ],
        ),
      ),
    )));
  }
}
