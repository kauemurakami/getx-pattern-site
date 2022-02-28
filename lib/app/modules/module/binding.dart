import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/module/controller.dart';

class ModuleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModuleController>(() => ModuleController());
  }
}
