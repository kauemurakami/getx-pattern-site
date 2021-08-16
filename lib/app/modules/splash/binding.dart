import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/splash/controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
