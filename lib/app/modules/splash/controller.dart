import 'package:get/get.dart';
import 'package:getx_pattern_site/routes/pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    this.timmer();
    super.onInit();
  }

  timmer() async => await Future.delayed(
      Duration(seconds: 2), () => Get.offAllNamed(Routes.DASHBOARD));
}
