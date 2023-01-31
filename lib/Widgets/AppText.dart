
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class AppText extends StatelessWidget {

  String text;

  AppText({
    required this.text,
});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontSize: 16, color: AppColors.Tclr,
      ),);
  }
}
