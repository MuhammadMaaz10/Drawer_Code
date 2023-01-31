
import 'package:flutter/material.dart';

import '../../Utils/Colors/App_Colors.dart';

class SignUpContainor extends StatelessWidget {
  VoidCallback? onpress;

  SignUpContainor({
    this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 82,
        width: 137,
        color: AppColors.Tclr,
        child: Icon(Icons.camera_alt,color: Colors.black,),
      ),
    );
  }
}
