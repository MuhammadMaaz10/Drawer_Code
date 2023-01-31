
import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class IconContainor extends StatelessWidget {

  Widget? widget;

  IconContainor({this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 33,
      decoration: BoxDecoration(
        color: AppColors.kRed,
        borderRadius: BorderRadius.circular(50),
      ),
      child: widget,
    );
  }
}
