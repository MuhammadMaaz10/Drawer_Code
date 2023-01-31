import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tehseel_mobile_app/Controllers/Drawer_ThemeController.dart';
import 'package:tehseel_mobile_app/Splash_Screen/Splash_Screen.dart';
import 'package:tehseel_mobile_app/practice.dart';

import 'Drawer_Pages/dashboard_page/dashboard_view.dart';
import 'Drawer_Pages/profile_page/Profile_pic/Profile_pic.dart';
import 'Drawer_Pages/profile_page/profile_page.dart';
import 'Home/Home_view.dart';
import 'Sign_In/SignIn_View.dart';
import 'Sign_Up/SignUp_View.dart';
import 'Widgets/Black_Containor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

