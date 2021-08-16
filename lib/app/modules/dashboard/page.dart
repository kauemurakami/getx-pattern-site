import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/dashboard/controller.dart';
import 'package:getx_pattern_site/routes/pages.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        //This router outlet handles the appbar and the bottom navigation bar
        var currentLocation = currentRoute!.location!;
        var index = 0;
        if (currentLocation.startsWith(Routes.INTRO) == true) {
          index = 1;
        }
        if (currentLocation.startsWith(Routes.GET_START) == true) {
          index = 2;
        }
        return Scaffold(
          body: GetRouterOutlet(
            delegate: delegate,
            anchorRoute: Routes.DASHBOARD,
            initialRoute: Routes.HOME,
            //anchorRoute: Routes.DASHBOARD,
            key: Get.nestedKey(1),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed(Routes.HOME);
                  break;
                case 1:
                  delegate.toNamed(Routes.INTRO);
                  break;
                case 2:
                  delegate.toNamed(Routes.GET_START);
                  break;
                default:
              }
            },
            items: [
              // _Paths.HOME + [Empty]
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: index == 0 ? Colors.black : Colors.grey,
                ),
                label: 'Home',
              ),
              // _Paths.HOME + Routes.PROFILE
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box_rounded,
                  color: index == 1 ? Colors.black : Colors.grey,
                ),
                label: 'Intro',
              ),
              // _Paths.HOME + _Paths.PRODUCTS
            ],
          ),
        );
      },
    );
  }
}
