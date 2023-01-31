

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


class ThemeController extends GetxController{
  bool isDarkMode = true;
  final textColor = Colors.black.obs;

  var dropdownvalue = 'English';
  var dropdownNetworkValue = 'Ufone';
  var List = [
    'Ufone',
    'Telenor',
    'Jazz',
    'Zong',
    'Ptcl',
  ];

  var items = [
    'English',
    'Urdu',
  ];


  void toggleDarkMode(ThemeData newTheme) {
    textColor.value = newTheme.primaryColor;
    isDarkMode = !isDarkMode;
    if (isDarkMode) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
    update();
  }



  var num1 = 3.obs;
  var num2 = 3;
  var num3;
  var num4;
  
  void changelanguage(var L1, var L2){
    var locale=Locale( L1, L2);
    Get.updateLocale(locale);
  }



  Increment(){
    num1.value++;
    update(['id']);
    print(num1.value);
    num3++;
  }

  result(){
    num3 = num1+num2;
    if (num3 >=5){
      //print('result is ok');
      num4 = 'greater';
    }else {
      //print(' y null');
      num4 = 'less';
    }
    update();
  }


}