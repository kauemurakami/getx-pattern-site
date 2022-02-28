import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/routes/controller.dart';

class RoutesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoutesController>(() => RoutesController());
  }
}
