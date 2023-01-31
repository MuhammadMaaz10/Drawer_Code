import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tehseel_mobile_app/Controllers/Sign_in_controller.dart';
import 'package:tehseel_mobile_app/Home/Home_view.dart';
import 'package:tehseel_mobile_app/Sign_Up/SignUp_View.dart';
import 'package:tehseel_mobile_app/Utils/Colors/App_Colors.dart';
import 'package:tehseel_mobile_app/Utils/Images/App_Images.dart';
import 'package:tehseel_mobile_app/Widgets/AppButton.dart';
import 'package:tehseel_mobile_app/Widgets/AppText.dart';
import 'package:tehseel_mobile_app/Widgets/Black_Containor.dart';
import 'package:tehseel_mobile_app/Widgets/TextField.dart';

import '../Forgot_Screen/ForgotScreen.dart';
import 'components/check_containor.dart';
import 'components/images/images.dart';

class SignIn_View extends StatefulWidget {
  const SignIn_View({Key? key}) : super(key: key);

  @override
  State<SignIn_View> createState() => _SignIn_ViewState();
}
final _key = GlobalKey<FormState>();

final SignController controller = Get.put(SignController());
final TextEditingController Pcontroller = TextEditingController();
final TextEditingController Econtroller = TextEditingController();

class _SignIn_ViewState extends State<SignIn_View> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 58, right: 58, top: 75),
                child: Image.asset(Images.logo),
              ),
              SizedBox(height: 60),
              Form(
                key: _key,
                child: blackContainor(
                  ht: Get.height * .67,
                  wd: 343,
                  rd: 40,
                  widget: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 38),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(text: 'Email'),
                        SizedBox(height: 10),
                        InputTextField(
                          validator: (value) {
                            RegExp regex = RegExp(r'^([a-z\d-]+)@([a-z\d-]+)\.([a-z]{2,8})(\.[a-z]{2,8})?$');
                            if (value!.isEmpty ) {
                              return 'Please enter some text';
                            }else if ( !regex.hasMatch(value) ){
                              return 'Please enter correct Email';
                            }else {
                              return null;
                            }
                          },
                            obSecure: false,
                            keyboardType: TextInputType.text,
                            controller: Econtroller,
                            onChanged: (value) {},
                            title: 'Enter Your Email'),
                        SizedBox(height: 20),
                        AppText(text: 'Password'),
                        SizedBox(height: 10),
                        InputTextField(
                          validator: (value){
                            RegExp regex =
                            RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#&*~]).{6,}$');
                            if (value!.isEmpty  ){
                              return 'please enter passord';
                            }else if (!regex.hasMatch(value)){
                              return 'Please enter correct password';
                            }else if (value.length < 6){
                              return 'password atleast 6 digits';
                            }else {
                              return null;
                            }
                          },
                            obSecure: true,
                            keyboardType: TextInputType.text,
                            controller: Pcontroller,
                            onChanged: (value) {},
                            title: 'Enter Your Password'),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Obx((){
                              return CheckContainor(
                                weidget: Checkbox(
                                  side: BorderSide.none,
                                  fillColor: MaterialStateProperty.all(AppColors.kRed),
                                  value: controller.checkValue.value,
                                  onChanged: (value) {
                                    controller.updateValue(value);
                                  },
                                  checkColor: AppColors.kRed,
                                ),
                              );
                                }),
                            SizedBox(width: 5,),
                            Text(
                              'Remember Password',
                              style:
                                  TextStyle(color: AppColors.Tclr, fontSize: 12),
                            ),
                            SizedBox(width: 12),
                            InkWell(
                              onTap: (){Get.to(ForgotScreen());},
                              child: Text('Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.kRed)),
                            ),
                          ],
                        ),
                        SizedBox(height: 38),
                        AppButton(
                          onTap: () {
                            if(_key.currentState!.validate()){
                              Get.to(Home_View());
                            }
                            // Get.to(Home_View());
                          },
                          ht: 46,
                          wd: 350,
                          rds: 10,
                          bText: 'Sign in',
                        ),
                        SizedBox(height: 38),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 95,
                              child: Divider(
                                endIndent: 2,
                                thickness: 1,
                                color: AppColors.kBackground,
                              ),
                            ),
                            AppText(text: 'or Sign up with'),
                            SizedBox(
                              width: 95,
                              child: Divider(
                                endIndent: 2,
                                thickness: 1,
                                color: AppColors.kBackground,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              SvgPicture.asset(Inimages.fb),
                              SizedBox(
                                width: 31,
                              ),
                              SvgPicture.asset(Inimages.twitter),
                              SizedBox(
                                width: 31,
                              ),
                              SvgPicture.asset(Inimages.google),
                              SizedBox(
                                width: 31,
                              ),
                              SvgPicture.asset(Inimages.apple),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: InkWell(
                            onTap: (){
                              Get.to(SignUp());
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don't have an account",
                                    style: TextStyle(color: AppColors.Tclr),
                                  ),
                                  TextSpan(
                                      text: 'Sign up',
                                      style: TextStyle(color: AppColors.kRed)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
