import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/binding.dart';
import 'package:getx_pattern_site/app/modules/home/page.dart';
import 'package:getx_pattern_site/routes/pages.dart';

class DashboardController extends GetxController {
  final pages = [Routes.HOME, Routes.INTRO];
}
