
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Colors/App_Colors.dart';

class WhiteContainor extends StatelessWidget {

  Widget widget;
  double ht;
  double wd;


  WhiteContainor({
    required this.widget,
    required this.ht,
    required this.wd});


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: ht,
      width: wd,
      decoration: BoxDecoration(
        color: AppColors.Tclr,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.kDark.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 3,
            offset: Offset(0,3), // changes position of shadow
          ),
        ],
      ),
      child: widget,
    );
  }
}
