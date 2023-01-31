import 'package:flutter/material.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';
import 'package:tehseel_mobile_app/Widgets/NormalAppText.dart';

import '../../../Home/components/white_containor.dart';

class Civil_Id extends StatelessWidget {
  const Civil_Id({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26,top: 44,right: 20),
            child: Row(
              children: [
                WhiteContainor(
                  ht: 115,
                    wd: 190,
                  widget:  Icon(Icons.camera_alt,color: Colors.black,size: 39,),
                ),
                SizedBox(width: 27),
                NormalAppText(text: "Your Civil ID\n     (Fornt)")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 46,top: 44,right: 20),
            child: Row(
              children: [
                NormalAppText(text: "Your Civil ID\n     (Fornt)"),
                SizedBox(width: 27),
                WhiteContainor(
                  ht: 115,
                  wd: 190,
                  widget:  Icon(Icons.camera_alt,color: Colors.black,size: 39,),
                ),

              ],
            ),
          )
        ],
      )),

    );
  }
}
