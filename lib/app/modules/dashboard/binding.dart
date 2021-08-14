import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
