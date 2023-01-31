import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class blackContainor extends StatelessWidget {
  double ht;
  double wd;
  double rd;
  Widget? widget;

  blackContainor({
    this.widget,
    required this.ht,
    required this.wd,
    required this.rd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ht,
      width: wd,
      decoration: BoxDecoration(
        color: AppColors.kDark,
        borderRadius: BorderRadius.circular(rd),
      ),
      child: widget,
    );
  }
}
