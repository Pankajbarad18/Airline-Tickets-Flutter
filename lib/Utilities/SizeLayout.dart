// ignore_for_file: file_names, non_constant_identifier_names

import 'package:get/get.dart';

class Layout {
  static getHeight() {
    return Get.height;
  }

  static getWidth() {
    return Get.width;
  }

  static height(double p) {
    double x = getHeight() / p;
    return getHeight() / x;
  }

  static Width(double p) {
    double x = getWidth() / p;
    return getWidth() / x;
  }
}
