import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/core/binding.dart';
import 'package:getx_pattern_site/app/modules/core/page.dart';
import 'package:getx_pattern_site/app/modules/dashboard/binding.dart';
import 'package:getx_pattern_site/app/modules/dashboard/page.dart';
import 'package:getx_pattern_site/app/modules/data/binding.dart';
import 'package:getx_pattern_site/app/modules/data/page.dart';
import 'package:getx_pattern_site/app/modules/home/binding.dart';
import 'package:getx_pattern_site/app/modules/home/page.dart';
import 'package:getx_pattern_site/app/modules/introduction/binding.dart';
import 'package:getx_pattern_site/app/modules/introduction/page.dart';
import 'package:getx_pattern_site/app/modules/provider/binding.dart';
import 'package:getx_pattern_site/app/modules/provider/page.dart';
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
    GetPage(name: Routes.DATA, page: () => DataPage(), binding: DataBinding()),
    GetPage(
        name: Routes.PROVIDER,
        page: () => ProviderPage(),
        binding: ProviderBinding()),
    GetPage(name: Routes.CORE, page: () => CorePage(), binding: CoreBinding()),
  ];
}
