
import 'package:flutter/material.dart';

import '../../Utils/Colors/App_Colors.dart';

class CheckContainor extends StatelessWidget {

  Widget? weidget;

  CheckContainor({
    this.weidget
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border(
          top: BorderSide(width: 2,color: AppColors.kBackground),
          bottom: BorderSide(width: 2,color: AppColors.kBackground),
          left: BorderSide(width: 2,color: AppColors.kBackground),
          right: BorderSide(width: 2,color: AppColors.kBackground),
        )
      ),
      child: weidget,
    );
  }
}
