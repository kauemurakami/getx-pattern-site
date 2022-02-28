import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/provider/controller.dart';
import 'package:getx_pattern_site/app/modules/provider/repository.dart';

class ProviderBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProviderController>(() => ProviderController());
  }
}
