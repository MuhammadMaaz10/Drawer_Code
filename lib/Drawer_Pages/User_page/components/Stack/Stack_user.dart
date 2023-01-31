import 'package:flutter/material.dart';

import '../../../../Home/components/white_containor.dart';
import '../../../../Utils/Colors/App_Colors.dart';
import '../../../../Widgets/Black_Containor.dart';
import '../../../../Widgets/NormalAppText.dart';

class Stack_user extends StatelessWidget {

  String UserName;

  Stack_user({required this.UserName});

  @override
  Widget build(BuildContext context) {
    return  Stack(
        clipBehavior: Clip.none,
        children: [
          WhiteContainor(ht: 210, wd: 343,
              widget: Padding(
                padding: const EdgeInsets.only(left: 23,top: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalAppText(text: 'maaz@gmail.com'),
                    SizedBox(height: 12,),
                    NormalAppText(text: '+923440003737'),
                    SizedBox(height: 12,),
                    NormalAppText(text: 'Creation Date: Sat, 30-jan-2023'),
                    SizedBox(height: 12,),
                    Text.rich(
                        TextSpan(
                            text: 'Role: ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'Reports',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.kRed),
                              )
                            ]
                        )),
                    Divider(thickness: 1,endIndent: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children:  [
                          Text('Active',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.green),),
                          SizedBox(width: 55,),
                          SizedBox(height: 33,
                            child: VerticalDivider(
                              color: Colors.red,
                              thickness: 1,
                              indent: 5,
                              endIndent: 0,
                              width: 1,
                            ),
                          ),
                          SizedBox(width: 48,),
                          Text('View/Edit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: AppColors.kRed),),
                        ],
                      ),
                    ),
                  ],),
              )),
          Positioned(
            left: 75,
            bottom: 196,
            child: blackContainor(
                ht: 28,
                wd: 191,
                widget: Center(child: Text(UserName,style: TextStyle(color: AppColors.Tclr,fontSize: 18,fontWeight: FontWeight.w700),)),
                rd: 21
            ),
          ),
        ]);
  }
}
