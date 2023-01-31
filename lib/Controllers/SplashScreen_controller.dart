import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Sign_Up/SignUp_View.dart';

class SplashScreenController extends GetxController {
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(SignUp());
    });
  }

  void getData() {
    Timer(Duration(seconds: 3), () {
      Get.to(() => SignUp());
    });
  }
}
