
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tehseel_mobile_app/Controllers/SplashScreen_controller.dart';
import '../Sign_Up/SignUp_View.dart';
import '../Utils/Images/App_Images.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);


  final SplashScreenController controller = Get.put(SplashScreenController());
  @override
  void initState() {
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Image.asset(Images.logo),
        )
    );
  }
}
