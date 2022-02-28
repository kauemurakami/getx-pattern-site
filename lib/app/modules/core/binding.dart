import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/core/controller.dart';

class CoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoreController>(() => CoreController());
  }
}
