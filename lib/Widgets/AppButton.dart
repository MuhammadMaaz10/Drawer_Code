import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';

class AppButton extends StatelessWidget {

  double? ht;
  double? wd;
  double? rds;
  String bText;
  VoidCallback? onTap;

  
  AppButton({
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
          child: Center(
            child: Text(bText,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: AppColors.Tclr
              ),),
          ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rds!)
          ),
        backgroundColor: AppColors.kRed,
      ),),
    );
  }

  
}
