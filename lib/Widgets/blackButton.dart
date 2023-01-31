import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class black_Button extends StatelessWidget {

  double? ht;
  double? wd;
  double? rds;
  String bText;
  VoidCallback? onTap;


  black_Button({
    this.ht,
    this.wd,
    this.rds,
    required this.bText,
    this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ht,
      width: wd,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.Bblack,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rds!)
          ),
        ),
        child: Center(
          child: Text(bText,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: AppColors.Tclr
            ),),
        ),),
    );
  }


}
