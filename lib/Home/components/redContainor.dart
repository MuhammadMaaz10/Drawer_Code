import 'package:flutter/material.dart';

import '../../Utils/Colors/App_Colors.dart';

class RedContainor extends StatelessWidget {
  const RedContainor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 175,
      decoration: BoxDecoration(
          color: AppColors.kRed,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Center(child: Text('118.900',style: TextStyle(
          color: AppColors.Tclr
      ),
      ),),
    );
  }
}
