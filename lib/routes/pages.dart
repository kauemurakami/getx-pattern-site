import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/binding.dart';
import 'package:getx_pattern_site/app/modules/dashboard/page.dart';
import 'package:getx_pattern_site/app/modules/getting_starter/binding.dart';
import 'package:getx_pattern_site/app/modules/getting_starter/page.dart';
import 'package:getx_pattern_site/app/modules/home/binding.dart';
import 'package:getx_pattern_site/app/modules/home/page.dart';
import 'package:getx_pattern_site/app/modules/introduction/binding.dart';
import 'package:getx_pattern_site/app/modules/introduction/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
    GetPage(
        name: Routes.INTRO, page: () => IntroPage(), binding: IntroBinding()),
    GetPage(
        name: Routes.GET_START,
        page: () => GetStartPage(),
        binding: GetStartBinding()),
  ];
}
