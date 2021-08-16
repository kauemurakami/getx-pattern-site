import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/getting_starter/controller.dart';

class GetStartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStartController>(() => GetStartController());
  }
}
