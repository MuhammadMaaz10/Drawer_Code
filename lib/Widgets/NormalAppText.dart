
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class NormalAppText extends StatelessWidget {

  String text;

  NormalAppText({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontSize: 16, color: AppColors.kDark,
      ),);
  }
}
