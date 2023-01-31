import 'package:flutter/cupertino.dart';

import '../../../Utils/Colors/App_Colors.dart';

class P_Text extends StatelessWidget {

  String text;
  double? size;
  double? fontsize;
  P_Text({
    required this.text,
    this.fontsize,
    this.size});


  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: AppColors.kDark,
        fontSize: size,
        fontWeight: FontWeight.w700,
      ),);
  }
}
