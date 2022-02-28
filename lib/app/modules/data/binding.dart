import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/data/controller.dart';

class DataBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataController>(() => DataController());
  }
}
