
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tehseel_mobile_app/Sign_In/SignIn_View.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';
import 'package:tehseel_mobile_app/Utils/Images/App_Images.dart';
import 'package:tehseel_mobile_app/Widgets/AppButton.dart';
import 'package:tehseel_mobile_app/Widgets/AppText.dart';

import '../Widgets/Black_Containor.dart';
import '../Widgets/TextField.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

final TextEditingController Econtroller = TextEditingController();

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 58,top: 200,right: 59),
                child: Image.asset(Images.logo),
              ),
              SizedBox(height: 120,),
              blackContainor(
                ht: 360,
                wd: 343,
                rd: 40,
              widget: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Center(
                      child: Text('Forgot password',style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: AppColors.kRed
                      ),),
                    ),
                    SizedBox(height: 45),
                    AppText(text: 'Email',),
                    SizedBox(height: 10),
                    InputTextField(
                      title: 'Enter Your Email',
                    obSecure: false,
                    controller: Econtroller,
                    onChanged: (value){},
                    keyboardType: TextInputType.text,),
                    SizedBox(height: 45),
                    AppButton(
                        bText: 'Reset Password',
                      onTap: (){
                          Get.to(SignIn_View());
                      },
                      ht: 46,
                      wd: 300,
                      rds: 10,
                    )
                  ],
                ),
              ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
