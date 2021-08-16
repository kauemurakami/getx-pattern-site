import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/introduction/controller.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroController>(() => IntroController());
  }
}
